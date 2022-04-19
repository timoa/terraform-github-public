# HomeLab
module "homelab" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "homelab"
  description          = "Experimentation of running an HomeLab server running Proxmox + K8S cluster on VMs"
  default_branch       = "develop"
  gitignore_template   = "Terraform"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "terraform",
    "proxmox"
  ]
}
