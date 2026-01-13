provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 4.10.0"
    }
  }
}

# provider "okta" {
#   org_name     = var.okta_org_name
#   base_url     = var.okta_base_url
#   scopes       = var.okta_scopes
#   client_id    = var.okta_client_id
#   private_key_id = var.okta_private_key_id
#   private_key  = data.aws_secretsmanager_secret_version.okta_private_key.secret_string
# }

# data "aws_secretsmanager_secret_version" "okta_private_key" {
#   secret_id = var.okta_secret_id
# }