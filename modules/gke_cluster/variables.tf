# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED MODULE PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "project" {
  type        = string
  description = "The name of the GCP Project where all resources will be launched."
}

variable "region" {
  type        = string
  description = "The region where cluster will be deployed"
}

variable "cluster_name" {
  type        = string
  description = "The GKE cluster name which will identofy your deployed cluster"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL MODULE PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "binary_auth_enabled" {
    type = bool
    description = "The flag represent binary authorization flag value"
    default = true
}

variable "cost_management_config_flag" {
    type = bool
    description = "The flag represent cost management config flag value"
    default = true
}

variable "release_channel" {
    type = string
    description = "The release channel for the GKE cluster"
    default = "STABLE"
}

variable "min_cluster_version" {
    type = string
    description = "The minimum valid verison of the GKE cluster"
    default = null
}

variable "auto_scaling" {
    type = bool
    description = "The flag specify auto scaling on/off property"
    default = true

}

variable "is_management_cluster" {
    type = bool
    description = "The flag specify whether a cluster is management or customer"
    default = false
}