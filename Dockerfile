# Stage 1: Builder - Install dependencies
FROM python:3.11-slim as builder

WORKDIR /build

# Copy requirements
COPY requirements.txt .

# Install CPU-only PyTorch and other dependencies in user site
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --user -r requirements.txt --index-url https://download.pytorch.org/whl/cpu

# Stage 2: Runtime - Final image
FROM python:3.11-slim

WORKDIR /app

# Copy Python packages from builder
COPY --from=builder /root/.local /root/.local

# Make sure scripts in .local are usable
ENV PATH=/root/.local/bin:$PATH

# Copy application files
COPY flask_app.py .
COPY streamlit_app.py .
COPY model.pt .

# Set environment variable
ENV MODEL_PATH=/app/model.pt

# Expose ports
EXPOSE 5000 8501

# Run Flask and Streamlit using gunicorn and Streamlit separately
# Use exec to pass signals correctly
CMD ["sh", "-c", "gunicorn -w 1 -b 0.0.0.0:5000 flask_app:app & streamlit run streamlit_app.py --server.port=8501 --server.address=0.0.0.0 --server.headless=true"]
