# -- NodeJS -------------------------------------------------------------------

# Chrome Tab Rotate Server
module "chrome_tab_rotate_server" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name               = "chrome-tab-rotate-server"
  description        = "A Webserver that provides the config/contents for the chrome-tab-rotate Chrome extension"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
  defaults           = var.defaults
  topics = [
    "nodejs",
    "chrome-extension",
    "api",
    "content",
    "chrome",
    "server",
    "chrome-browser",
    "configuration",
    "digital-signage",
    "chrome-tab"
  ]
}

# -- Terraform ----------------------------------------------------------------

# HomeLab
module "homelab" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name               = "homelab"
  description        = "Experimentation of running an HomeLab server running Proxmox + K8S cluster on VMs"
  default_branch     = "develop"
  gitignore_template = "Terraform"
  defaults           = var.defaults
  topics = [
    "terraform",
    "proxmox"
  ]
}
