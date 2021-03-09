# module-management-azure

I manage a lot of Terraform modules, this Controls Azure modules,
and means I can update files, setting/properties and secrets in one go.

## Add existing

```terraform
tf import github_repository.repositories[3] terraform-azure-activemq
```
