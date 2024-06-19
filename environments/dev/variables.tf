# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED MODULE PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  type = string
  description = "The location where you want to deploy"
}

variable "project" {
  type =  string
  description = "Your GCP project Id"
}

variable "terraform_deploy_service_account" {
  type = string
  description = "The name of the service account which you want to use for all your deployments."
}

variable "service_account_id" {
  type =  string
  description = "The name of your gke service account to be created"
}

variable "service_account_roles" {
  type =  list(string)
  description = "The permissions you want to assign to service account"
}

variable "cluster_name" {
  type =  string
  description = "GKE cluster name"
}

variable "node_pool_name" {
  type =  string
  description = "GKE node pool name"
}

variable "node_pool_machine_type" {
  type =  string
  description = "machine type of your GKE node pool"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL MODULE PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "service_account_name" {
  type =  string
  description = "The description of service account"
  default = ""
}