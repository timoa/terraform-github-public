# CDKIt | App Store Design
module "cdkit_appstore_design" {
  source = "./modules/repository"

  name               = "cdkit.appstore.design"
  description        = "NodeJS cli to create the App Store and Google Play screenshots with different themes and devices"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
  homepage_url       = "https://cdkit.org"
  topics = [
    "nodejs",
    "app-store",
    "app-store-screenshots",
    "design-tools",
    "google-play",
    "google-play-store",
    "google-play-screenshots",
    "itunes-store",
    "screenshots",
    "managed-by-terraform"
  ]
}

# CDKIt | UI Automation
module "cdkit_ui_automation" {
  source = "./modules/repository"

  name               = "cdkit.ui.automation"
  description        = "This tool is a set of scripts to launch an Appium Server instance and run UI tests on iOS simulators and Genymotion Android emulators"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
  homepage_url       = "https://cdkit.org"
  topics = [
    "mobile",
    "titanium",
    "appcelerator",
    "appium",
    "axway",
    "ui-testing",
    "genymotion",
    "appium-server",
    "managed-by-terraform"
  ]
}

# CDKit | Ansible
module "cdkit_ansible" {
  source = "./modules/repository"

  name               = "cdkit.ansible"
  description        = "Ansible Roles and Playbooks to manage Mac CI/CD agents installation & updates"
  default_branch     = "develop"
  gitignore_template = null
  homepage_url       = "https://cdkit.org"
  topics = [
    "macos",
    "linux",
    "ansible",
    "gocd",
    "gocd-server",
    "gocd-agent",
    "managed-by-terraform"
  ]
}
