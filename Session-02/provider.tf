terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "roboshop-state-file-s3"
    key = "roboshop-state"
    dynamodb_table = "roboshop-remote-state-lock"
  
 }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

