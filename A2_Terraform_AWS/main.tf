provider "aws" {
  region = "us-east-1"  
}

module "vpc" {
  source = "./A2_Terraform_AWS/vpc"
}

module "ec2" {
  source = "./A2_Terraform_AWS/ec2"
}

module "security_group" {
  source = "./A2_Terraform_AWS/security_group"
}
