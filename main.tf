# Terraform GitHub Public repositories
module "terraform_github_public" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-github-public"
  description          = "Terraform project to centralize my public repositories on GitHub"
  default_branch       = "main"
  gitignore_template   = "Terraform"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "github",
    "terraform",
    "managed-by-terraform"
  ]
}
