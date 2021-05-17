variable "commit" {
  default = {
    message = "Managed by Terraform"
    author  = "James Woolfenden"
    email   = "james.woolfenden@gmail.com"
  }
}

variable "AWS_KEY" {
  sensitive=true
}

variable "AWS_ACCESS_KEY_ID" {
  sensitive=true
}

variable "INFRACOST_API_KEY" {
  sensitive=true
}


variable "ARM_CLIENT_SECRET" {
  sensitive=true
}

variable "ARM_SUBSCRIPTION_ID" {
  sensitive=true
}
 
variable "ARM_CLIENT_ID" {
  sensitive=true
}

variable "ARM_TENANT_ID" {
  sensitive=true
}

variable "repo" {
  type = list(any)
}
