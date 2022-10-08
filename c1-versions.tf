# Terraform Block
terraform {
  required_version = "~>1.1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23"
    }
  }
}
  # Update Terraform Cloud Backend Block Information below
 
  backend "remote" {
    organization = "ranjani-hcta-demo1"

    workspaces {
      name = "cli-driven-demo"
    }
  }


# Provider Block
provider "aws" {
  region  = var.aws_region
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
