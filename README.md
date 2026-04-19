# 🏥 MediScan - AI Deployment Project (Docker + Terraform )

MediScan is an AI-powered medical image classification application deployed as a complete DevOps project.

This repository showcases my work in **deploying and containerizing an AI application** using **Docker** and provisioning infrastructure using **Terraform**, simulating a real-world deployment workflow.

---

##  Project Goal

The main goal of this project is to demonstrate my skills in:

- Packaging an AI/ML application into a Docker container
- Running the application as a production-like service
- Automating infrastructure provisioning using Terraform
- Organizing an end-to-end deployment-ready project structure

---

##  What I Implemented

In this project, my main contributions include:

 Writing and configuring the **Dockerfile** for the application  
 Preparing the project for deployment (dependencies, structure, runtime)  
 Infrastructure provisioning using **Terraform** (`terraform.tf`)  
 Ensuring the application can run locally and in cloud environments  

 

---

##  Application Components

This project contains:
  
- Docker setup for containerized deployment  
- Terraform scripts for cloud provisioning


---

##  Features

- Upload medical images through a Streamlit interface  
- Backend performs inference using a trained deep learning model  
- Dockerized application for easy deployment anywhere  
- Infrastructure automation using Terraform  

---

##  Technologies Used

- Streamlit
- Docker
- Terraform
- Linux

---

##  Repository Structure

```bash
.
├── Dockerfile              # Docker image configuration
├── README.md               # Project documentation
├── flask_app.py            # Flask API backend
├── streamlit_app.py        # Streamlit frontend app
├── requirements.txt        # Python dependencies
├── model.pt                # Trained model weights
├── model_training.ipynb    # Model training notebook
└── terraform.tf            # Terraform infrastructure configuration
