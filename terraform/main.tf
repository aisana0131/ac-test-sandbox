resource "aws_instance" "final_ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
  tags = {
    Name        = "final-test-for-prod workflow"
    Environment = "test"
  }
}