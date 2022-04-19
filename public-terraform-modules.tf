# Terraform Module Example
module "terraform_module_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-module-example"
  description          = "Terraform module use as an example to start new module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  default_branch       = "main"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "terraform",
    "semantic-release",
    "renovate",
    "terraform-module",
    "managed-by-terraform"
  ]
}

# Terraform Module AWS Example
module "terraform_module_aws_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-module-aws-example"
  description          = "A Terraform module uses as an example to start new AWS Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  default_branch       = "main"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "terraform",
    "semantic-release",
    "renovate",
    "terraform-module",
    "aws",
    "managed-by-terraform"
  ]
}

# Terraform Module GCP Example
module "terraform_module_gcp_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-module-gcp-example"
  description          = "A Terraform module uses as an example to start new Google Cloud Platform Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  default_branch       = "main"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "terraform",
    "semantic-release",
    "renovate",
    "terraform-module",
    "google-cloud-platform",
    "gcp",
    "managed-by-terraform"
  ]
}
