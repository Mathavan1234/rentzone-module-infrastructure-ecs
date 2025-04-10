# Environment Varibales
variable "region" {}
variable "project_name" {}
variable "environment" {}

# VPC Variables
variable "vpc_cidr" {}
variable "public_subnet_AZ1_cidr" {}
variable "public_subnet_AZ2_cidr" {}
variable "private_app_subnet_AZ1_cidr" {}
variable "private_app_subnet_AZ2_cidr" {}
variable "private_data_subnet_AZ1_cidr" {}
variable "private_data_subnet_AZ2_cidr" {}

# SG Variables
variable "ssh_ip" {}

# RDS Variables
variable "database_snapshot_identifier" {}
variable "database_instance_class" {}
variable "database_instance_identifier" {}
variable "multi_az_deployment" {}

# RDS Variables
variable "domain_name" {}
variable "alternative_names" {}

# ALB Variables
variable "target_type" {}

# S3 Variables
variable "env_file_bucket_name" {}
variable "env_file_name" {}

# ECS Variables
variable "architecture" {}
variable "container_image" {}
