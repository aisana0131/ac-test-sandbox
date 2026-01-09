resource "aws_instance" "first_ec2" {
  ami           = "ami-07ff62358b87c7116" // changed ami
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "~> 1.14.0"  // Terraform version
  required_providers {                // Provider version
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
}
