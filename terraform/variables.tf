variable "region" {
  description = "The AWS region"
  type        = string
}

variable "okta_org_name" {
  type = string
}

variable "okta_base_url" {
  type = string
}

variable "okta_scopes" {
  type = list(string)
}

variable "okta_client_id" {
  type = string
}

variable "okta_private_key_id" {
  type = string
}

# variable "okta_secret_id" {
#   description = "The secret ID in AWS Secrets Manager"
#   type        = string
# }

variable "okta_group_name" {
  type = string
}