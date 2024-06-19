# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED MODULE PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "region" {
  type = string
}

variable "project" {
  type =  string
}

variable "cluster_name" {
  type =  string
}

variable "node_pool_name" {
  type =  string
}

variable "service_account_email" {
    type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL MODULE PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "node_pool_machine_type" {
  type =  string
  default = "e2-medium"
}

variable "node_count" {
    type = string
    default = "1"
}

variable "min_node_count" {
    type = number
    default = 1
}

variable "max_node_count" {
    type = number
    default = 5
}

