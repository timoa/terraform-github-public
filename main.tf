# Terraform GitHub Public repositories
module "terraform_github_public" {
  source = "./modules/repository"

  name        = "terraform-github-public"
  description = "Terraform project to centralize my public repositories on GitHub"
  topics = [
    "github",
    "terraform",
    "managed-by-terraform"
  ]
}
