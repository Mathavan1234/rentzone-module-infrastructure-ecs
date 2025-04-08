locals {
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
}

# Create VPC Module
module "vpc" {
  source                       = "git@github.com:Mathavan1234/Building-AWS-Infrastructure-with-Terraform-Modules.git//VPC"
  region                       = local.region
  project_name                 = local.project_name
  environment                  = local.environment
  vpc_cidr                     = var.vpc_cidr
  public_subnet_AZ1_cidr       = var.public_subnet_AZ1_cidr
  public_subnet_AZ2_cidr       = var.public_subnet_AZ2_cidr
  private_app_subnet_AZ1_cidr  = var.private_app_subnet_AZ1_cidr
  private_app_subnet_AZ2_cidr  = var.private_app_subnet_AZ2_cidr
  private_data_subnet_AZ1_cidr = var.private_data_subnet_AZ1_cidr
  private_data_subnet_AZ2_cidr = var.private_data_subnet_AZ2_cidr
}
