terraform {
  backend "s3" {
    bucket = "aws-session-s3-bucket-aisana"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}