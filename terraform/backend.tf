terraform {
  backend "s3" {
    bucket         = "okta-bucket-test"
    key            = "ec2-test/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "ac-task-terraform"
    # encrypt        = true
    # enable_locking = true
  }
}