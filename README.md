# DevOps Assignment

## Overview
This project demonstrates a minimal DevOps pipeline.

## Features
- CI/CD using GitHub Actions
- Docker containerization
- Terraform Infrastructure as Code

## CI/CD Pipeline
Steps:
- Install dependencies
- Run application
- Build Docker image
- Deploy step (echo simulation)

## Docker
Build image:
docker build -t devops-app .

Run container:
docker run -p 5000:5000 devops-app

## Terraform
This provisions:
- AWS EC2 instance (t2.micro)

Steps:
terraform init
terraform plan
terraform apply

## Monitoring (Optional)
Not implemented
