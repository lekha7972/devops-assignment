provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "devops_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "DevOps-VPC"
  }
}

#  Subnet 
resource "aws_subnet" "devops_subnet" {
  vpc_id            = aws_vpc.devops_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "DevOps-Subnet"
  }
}

#  Security Group 
resource "aws_security_group" "devops_sg" {
  name        = "devops-sg"
  description = "Allow SSH and HTTP"
  vpc_id      = aws_vpc.devops_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "DevOps-SG"
  }
}

# EC2 Instance 
resource "aws_instance" "devops_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.devops_subnet.id
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  tags = {
    Name = "DevOps-Server"
  }
}

#  S3 Bucket
resource "aws_s3_bucket" "devops_bucket" {
  bucket = "lekha-devops-assignment-priya7972"

  tags = {
    Name        = "DevOps-S3-Bucket"
    Environment = "Dev"
  }
}
