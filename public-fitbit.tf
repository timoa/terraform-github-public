# Fitbit Off-peak Hours
module "fitbit_off_peak_hours" {
  source  = "mineiros-io/repository/github"
  version = "0.16.0"

  name                 = "fitbit-off-peak-hours"
  description          = "WIP: Source code of the Off Peak Hours Fitbit App"
  default_branch       = "main"
  gitignore_template   = "NodeJS"
  defaults             = var.defaults
  vulnerability_alerts = true
  topics = [
    "fitbit",
    "fitbit-app",
    "fitbit-sdk",
    "fitbit-sense",
    "fitbit-app-development",
    "nodejs",
    "managed-by-terraform"
  ]
}
