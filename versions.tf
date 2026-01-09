terraform {
  required_version = "~> 1.14.0"  // Terraform version
  required_providers {                // Provider version
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
}