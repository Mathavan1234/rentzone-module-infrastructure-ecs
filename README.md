🚀 Building AWS Infrastructure with Terraform Modules
This project demonstrates how to deploy a dynamic web application on AWS using Terraform Modules, Docker, ECR, and ECS, ensuring high availability, modularity, and scalability.

📌 Features
Infrastructure as Code with Terraform

Modular and reusable Terraform configurations

S3 backend for state file management

DynamoDB for state file locking

ACM, RDS, ALB, ECS, Auto Scaling, and Route 53 integration

🔧 Prerequisites
AWS Account

GitHub Account

Terraform Installed

AWS CLI Configured

SSH Key Pair generated locally

🛠️ Setup Overview
1. SSH Key & GitHub Access
Generate SSH key using PowerShell

Upload public key to GitHub to clone repositories

2. IAM User & Access Keys
Create IAM User with AdministratorAccess

Generate Access Key ID and Secret Access Key

3. Configure Terraform AWS Profile
Create named profile in AWS CLI for Terraform authentication

☁️ Terraform Backend Setup
S3 Bucket for State File
Stores Terraform state securely

Enables team collaboration

DynamoDB Table for State Locking
Prevents concurrent modifications to the infrastructure

📂 Terraform Structure
Providers Configuration
Configure AWS provider in providers.tf

Backend Configuration
Set up backend in backend.tf

🧩 Terraform Modules
VPC Module
Creates VPC, Internet Gateway, Subnets, Route Tables

Ensures High Availability across 2 AZs

NAT Gateway Module
Includes Elastic IPs, NAT Gateways, Private Route Tables, and Subnet Associations

Security Group (SG) Module
ALB, Bastion Host, App Server, and Database SGs

RDS Module
Creates DB Subnet Group

Launches RDS Instance from snapshot

ACM Module
Requests Public Certificates

Domain validation using Route 53

ALB Module
Creates Application Load Balancer

Includes listeners on ports 80 (redirect) & 443 (forward)

S3 Module (for App Env Vars)
Stores environment variable files for ECS containers

IAM Role for ECS
Task Execution Role with proper permissions

ECS Module
ECS Cluster, Task Definition, and Service

Auto Scaling Group Module
Auto Scales ECS services based on policy

Route 53 Module
DNS records to access app via domain

✅ Deployment Steps
bash
Copy
Edit
terraform init          # Initialize Terraform
terraform plan          # Review infrastructure changes
terraform apply         # Apply the changes and create resources
🌐 Final Output
Application accessible via a custom domain

Load Balanced, Auto-scaled, Secure deployment using AWS best practices
