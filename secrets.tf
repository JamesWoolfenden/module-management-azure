
variable "credentials_file" {
}

resource "github_actions_secret" "GOOGLE_CLOUD_KEYFILE_JSON" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "GOOGLE_CLOUD_KEYFILE_JSON"
  plaintext_value = local.credentials
}
