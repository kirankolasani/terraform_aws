terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "dev-roboshop-state-tf"
    key = "dev-state-file"
    dynamodb_table = "dev-roboshop-state-lockID"
    region = "us-east-1"
  
 }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

