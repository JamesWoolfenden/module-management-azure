terraform {
  required_providers {
    github = {
      version = "5.9.1"
      source  = "integrations/github"
    }
  }
  required_version = ">=0.14.8"
}
