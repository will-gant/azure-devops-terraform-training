terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = var.state_bucket
    key    = var.access_key
    region = var.region
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}