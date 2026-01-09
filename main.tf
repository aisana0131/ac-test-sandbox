# Provider configuration
provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

# Use the default VPC
data "aws_vpc" "default" {
  default = true
}

# Use the default subnets in the default VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Use the default security group in the default VPC
resource "aws_security_group" "my_ec2_sg" {
  name        = "my-ec2-security-group"  # Unique name
  description = "Security group for EC2 instance"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all inbound traffic (not recommended for production)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon_linux.id  # Use the latest Amazon Linux 2 AMI
  instance_type = "t2.micro"                    # Default instance type
  subnet_id     = data.aws_subnets.default.ids[0]  # Use the first default subnet

  vpc_security_group_ids = [aws_security_group.my_ec2_sg.id]

  tags = {
    Name = "ExampleEC2Instance"
  }
}

# Fetch the latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Output the public IP of the EC2 instance
output "public_ip" {
  value = aws_instance.example.public_ip
}