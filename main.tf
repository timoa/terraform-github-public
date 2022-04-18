# -- NodeJS -------------------------------------------------------------------
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

# -- Terraform modules --------------------------------------------------------
