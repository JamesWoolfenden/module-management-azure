
variable "ARM_CLIENT_SECRET" {
  default = "1234"
}

variable "ARM_SUBSCRIPTION_ID" {
  default = "1234"
}

resource "github_actions_secret" "ARM_CLIENT_SECRET" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "ARM_CLIENT_SECRET"
  plaintext_value = var.ARM_CLIENT_SECRET
}

resource "github_actions_secret" "ARM_SUBSCRIPTION_ID" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "ARM_SUBSCRIPTION_ID"
  plaintext_value = var.ARM_SUBSCRIPTION_ID
}

resource "github_actions_secret" "AWS_KEY" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "AWS_KEY"
  plaintext_value = var.AWS_KEY
}


resource "github_actions_secret" "AWS_ACCESS_KEY_ID" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = var.AWS_ACCESS_KEY_ID
}
