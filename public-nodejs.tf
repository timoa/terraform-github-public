# App Stores Prometheus Exporter
module "app_stores_prometheus_exporter" {
  source = "./modules/repository"

  name               = "app-stores-prometheus-exporter"
  description        = "Prometheus exporter that exports metrics (score, ratings, reviews, app version, etc.) from Apple App Store and Google Play"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
  topics = [
    "nodejs",
    "docker",
    "prometheus",
    "prometheus-exporter",
    "google-play-store",
    "itunes-store",
    "managed-by-terraform"
  ]
}

# Chrome Tab Rotate Server
module "chrome_tab_rotate_server" {
  source = "./modules/repository"

  name               = "chrome-tab-rotate-server"
  description        = "A Webserver that provides the config/contents for the chrome-tab-rotate Chrome extension"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
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
    "chrome-tab",
    "managed-by-terraform"
  ]
}

# NodeJS Encryption API Example
module "nodejs_encryption_api_example" {
  source = "./modules/repository"

  name               = "nodejs-encryption-api-example"
  description        = "Example of encrypting/decrypting data thru an API using node.js"
  default_branch     = "develop"
  gitignore_template = "NodeJS"
  topics = [
    "nodejs",
    "api",
    "docker",
    "cryptography",
    "swagger",
    "postman",
    "fastify",
    "managed-by-terraform"
  ]
}
