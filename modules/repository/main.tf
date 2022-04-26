
module "repository" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = var.name
  description          = var.description
  homepage_url         = var.homepage_url
  default_branch       = var.default_branch
  gitignore_template   = var.gitignore_template
  defaults             = var.defaults
  vulnerability_alerts = true
  topics               = var.topics
}
