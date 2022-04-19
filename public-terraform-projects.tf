# HomeLab
module "homelab" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "homelab"
  description          = "Experimentation of running an HomeLab server running Proxmox + K8S cluster on VMs"
  default_branch       = "develop"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "terraform",
    "proxmox",
    "managed-by-terraform"
  ]
}

# Terraform Elasticsearch Single Node (OUTDATED)
# TODO: UPDATE THIS REPOSITORY
module "terraform_elasticsearch_single_node" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-elasticsearch-single-node"
  description          = "Example of the creation of an AWS Elasticsearch single node with Terraform"
  default_branch       = "master"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "aws",
    "aws-elasticsearch",
    "terraform",
    "elasticsearch",
    "single-node",
    "managed-by-terraform"
  ]
}

# Terraform Jenkins Slaves on-demand (OUTDATED)
# TODO: UPDATE THIS REPOSITORY
module "terraform_jenkins_slaves_on_demand" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "terraform-jenkins-slaves-on-demand"
  description          = "Configuration of a Jenkins master with slaves on-demand (AWS EC2 version)"
  default_branch       = "master"
  gitignore_template   = "Terraform"
  license_template     = "apache-2.0"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "aws",
    "jenkins",
    "terraform",
    "jenkins-slaves",
    "jenkins-master",
    "managed-by-terraform"
  ]
}
