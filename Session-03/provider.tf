terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "roboshop-state-file-s3"
    key = "roboshop-module-state"
    dynamodb_table = "roboshop-remote-state-lock"
    region = "us-east-1"
  
 }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

