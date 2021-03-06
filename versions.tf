terraform {
  required_version = "~> 1.0"

  backend "remote" {
    organization = "timoa"
    workspaces {
      name = "terraform-github-public"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.1"
    }
  }
}
