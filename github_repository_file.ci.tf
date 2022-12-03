resource "github_repository_file" "ci" {
  count      = local.count
  repository = var.repo[count.index]["name"]
  branch     = var.repo[count.index]["default_branch"]
  file       = ".github/workflows/${var.repo[count.index]["default_branch"]}.yml"
  content = templatefile("${path.module}/workflows/ci.tpl", {
    branch              = var.repo[count.index]["default_branch"],
    token               = "$${{ github.token }}",
    targetdir           = "example/examplea",
    restore             = "$${{ runner.os }}-terraform-",
    terraform           = "1.3.0",
    ARM_TENANT_ID       = "$${{ secrets.ARM_TENANT_ID }}"
    ARM_CLIENT_ID       = "$${{ secrets.ARM_CLIENT_ID }}",
    ARM_CLIENT_SECRET   = "$${{ secrets.ARM_CLIENT_SECRET }}",
    ARM_SUBSCRIPTION_ID = "$${{ secrets.ARM_SUBSCRIPTION_ID }}",
    key                 = "$${{ runner.os }}-terraform-$${{ hashFiles('**/.terraform.lock.hcl') }}",
    repository          = "$${{ github.repository }}",
    steps               = "$${{ steps.time.outputs.time }}"
    }
  )
  commit_message      = var.commit["message"]
  commit_author       = var.commit["author"]
  commit_email        = var.commit["email"]
  overwrite_on_create = true
}

locals {
  count = length(var.repo)
}
