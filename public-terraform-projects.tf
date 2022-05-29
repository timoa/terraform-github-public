# HomeLab
module "homelab" {
  source = "./modules/repository"

  name             = "homelab"
  description      = "Experimentation of running an HomeLab server running Proxmox + K8S cluster on VMs"
  default_branch   = "develop"
  license_template = "apache-2.0"
  topics = [
    "terraform",
    "proxmox",
    "managed-by-terraform"
  ]
}

# Terraform OCI VS Code Server
module "terraform_oci_vscode_server" {
  source = "./modules/repository"

  name             = "terraform-oci-vscode-server"
  description      = "Terraform project that deploys VSCode Server on Oracle Cloud Infrastructure (free tier) and protect the access with Cloudflare Zero Trust (optional) or an SSH tunnel"
  default_branch   = "develop"
  license_template = "apache-2.0"
  topics = [
    "terraform",
    "vscode",
    "code-server",
    "vscode-remote",
    "oci",
    "cloudflare",
    "cloudflare-access",
    "cloudflare-tunnel",
    "cloudflare-zero-trust",
    "managed-by-terraform"
  ]
}

# Terraform Elasticsearch Single Node (OUTDATED)
# TODO: UPDATE THIS REPOSITORY
module "terraform_elasticsearch_single_node" {
  source = "./modules/repository"

  name             = "terraform-elasticsearch-single-node"
  description      = "Example of the creation of an AWS Elasticsearch single node with Terraform"
  default_branch   = "master"
  license_template = "apache-2.0"
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
  source = "./modules/repository"

  name             = "terraform-jenkins-slaves-on-demand"
  description      = "Configuration of a Jenkins master with slaves on-demand (AWS EC2 version)"
  default_branch   = "master"
  license_template = "apache-2.0"
  topics = [
    "aws",
    "jenkins",
    "terraform",
    "jenkins-slaves",
    "jenkins-master",
    "managed-by-terraform"
  ]
}
