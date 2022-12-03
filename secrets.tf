resource "github_actions_secret" "ARM_CLIENT_SECRET" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "ARM_CLIENT_SECRET"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.ARM_CLIENT_SECRET
}

resource "github_actions_secret" "ARM_SUBSCRIPTION_ID" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "ARM_SUBSCRIPTION_ID"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.ARM_SUBSCRIPTION_ID
}

resource "github_actions_secret" "ARM_CLIENT_ID" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "ARM_CLIENT_ID"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.ARM_CLIENT_ID
}

resource "github_actions_secret" "ARM_TENANT_ID" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "ARM_TENANT_ID"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.ARM_TENANT_ID
}

resource "github_actions_secret" "AWS_KEY" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "AWS_KEY"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.AWS_KEY
}

resource "github_actions_secret" "AWS_ACCESS_KEY_ID" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "AWS_ACCESS_KEY_ID"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.AWS_ACCESS_KEY_ID
}

resource "github_actions_secret" "INFRACOST_API_KEY" {
  count       = length(var.repo)
  repository  = var.repo[count.index]["name"]
  secret_name = "INFRACOST_API_KEY"
  # checkov:skip=CKV_SECRET_6: ADD REASON
  plaintext_value = var.INFRACOST_API_KEY
}
