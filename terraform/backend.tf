terraform {
  backend "s3" {
    bucket = "ac-task-terraform-state"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "ac-task-terraform"
    encrypt        = true

  }
}