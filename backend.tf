terraform {
  backend "s3" {
    bucket = "ac-task-terraform-state"
    key    = "test/terraform/terraform.tfstate"
    region = "us-east-1"
  }
}