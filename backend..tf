# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "maddy-terraform-modules-remote-state"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "ap-southeast-2"
    profile        = "terraform-user"
    dynamodb_table = "terraform-modules-state-lock"
  }
}
