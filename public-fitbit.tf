# Fitbit Off-peak Hours
module "fitbit_off_peak_hours" {
  source = "./modules/repository"

  name               = "fitbit-off-peak-hours"
  description        = "WIP: Source code of the Off Peak Hours Fitbit App"
  gitignore_template = "NodeJS"
  license_template   = "apache-2.0"
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
