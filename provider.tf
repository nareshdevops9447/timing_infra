terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "timing-s3"
    key = "vpc"
    region = "us-east-1"
    dynamodb_table = "timing-lock"
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

