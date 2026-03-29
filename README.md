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
- VPC (Virtual Private Cloud)
- Subnet (Network segmentation)
- Security Group (Firewall rules for SSH and HTTP)
- AWS EC2 instance (t2.micro)
- S3 Bucket (Storage service)

Commands:(for reference)
terraform init
terraform plan
terraform apply

## Monitoring (Optional)
Not implemented.
