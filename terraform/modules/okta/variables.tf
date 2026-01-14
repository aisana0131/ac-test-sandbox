variable "okta_users" {
  type = map(object({
    first_name = string
    last_name  = string
    email      = string
    groups     = list(string)
  }))
}

variable "okta_groups" {
  type = map(object({
    description = string
  }))
}

variable "aws_sso_url" {
  type = string
}
