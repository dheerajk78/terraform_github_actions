terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.17"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }
  }
  backend "s3" {
    bucket = var.bucket
    key = var.state_key
    region = var.primary_region
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.primary_region
}
