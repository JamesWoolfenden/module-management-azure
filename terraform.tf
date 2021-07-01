terraform {
  required_providers {
    github = {
      version = "4.12.1"
      source  = "integrations/github"
    }
  }
  required_version = ">=0.14.8"
}
