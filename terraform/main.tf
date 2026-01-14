module "final_ec2" {
  source = "./modules/ec2"

  ami_id      = var.ami_id
  instance_type = var.instance_type
  name        = var.name
  environment = var.environment
}