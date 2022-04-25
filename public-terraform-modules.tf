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

# Terraform AWS Module Example
module "terraform_aws_module_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-aws-module-example"
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

# Terraform GCP Module Example
module "terraform_gcp_module_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-gcp-module-example"
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

# Terraform Module OCI Example
module "terraform_module_oci_example" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-module-oci-example"
  description          = "A Terraform module uses as an example to start new Oracle Cloud Infrastructure Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
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
    "oracle-cloud-infrastructure",
    "oci",
    "managed-by-terraform"
  ]
}
