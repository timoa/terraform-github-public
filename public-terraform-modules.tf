# Terraform Module Example
module "terraform_module_example" {
  source = "./modules/repository"

  name             = "terraform-module-example"
  description      = "Terraform module use as an example to start new module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  license_template = "apache-2.0"
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
  source = "./modules/repository"

  name             = "terraform-aws-module-example"
  description      = "A Terraform module uses as an example to start new AWS Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  license_template = "apache-2.0"
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
module "terraform_google_module_example" {
  source = "./modules/repository"

  name             = "terraform-google-module-example"
  description      = "A Terraform module uses as an example to start new Google Cloud Platform Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  license_template = "apache-2.0"
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

# Terraform OCI Module Example
module "terraform_oci_module_example" {
  source = "./modules/repository"

  name             = "terraform-oci-module-example"
  description      = "A Terraform module uses as an example to start new Oracle Cloud Infrastructure Terraform module. It includes all the automation (versioning, providers update, lint, security) and best practices from HashiCorp"
  license_template = "apache-2.0"
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
