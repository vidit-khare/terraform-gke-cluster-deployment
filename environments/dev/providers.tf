terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.33.0"
    }
  }
}

provider "google" {
  alias = "initial"
}

data "google_service_account_access_token" "default"{
  provider = google.initial
  target_service_account = var.terraform_deploy_service_account
  scopes = ["cloud-platform"]
  lifetime = "3600s"
}

provider "google" {
  region = var.region
  project = var.project
  access_token = data.google_service_account_access_token.default.access_token
}
