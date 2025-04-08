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

# Create NAT Gateways Module
module "nat-gateway" {
  source                     = "git@github.com:Mathavan1234/Building-AWS-Infrastructure-with-Terraform-Modules.git//NAT-Gateway"
  project_name               = local.project_name
  environment                = local.environment
  public_subnet_az1_id       = module.vpc.public_subnet_az1_id
  internet_gateway           = module.vpc.internet_gateway
  public_subnet_az2_id       = module.vpc.public_subnet_az2_id
  vpc_id                     = module.vpc.vpc_id
  private_app_subnet_az1_id  = module.vpc.private_app_subnet_az1_id
  private_data_subnet_az1_id = module.vpc.private_data_subnet_az1_id
  private_app_subnet_az2_id  = module.vpc.private_app_subnet_az2_id
  private_data_subnet_az2_id = module.vpc.private_data_subnet_az2_id
}

# Create Security Groups Module
module "security-group" {
  source       = "git@github.com:Mathavan1234/Building-AWS-Infrastructure-with-Terraform-Modules.git//Security-Groups"
  project_name = local.project_name
  environment  = local.environment
  vpc_id       = module.vpc.vpc_id
  ssh_ip       = var.ssh_ip
}
