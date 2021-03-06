
module "repository" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name                 = var.name
  description          = var.description
  homepage_url         = var.homepage_url
  default_branch       = var.default_branch
  gitignore_template   = var.gitignore_template
  license_template     = var.license_template
  defaults             = var.defaults
  has_projects         = var.has_projects
  vulnerability_alerts = true
  topics               = var.topics
}
