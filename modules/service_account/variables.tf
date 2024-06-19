# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED MODULE PARAMETERS
# These parameters must be supplied when consuming this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "project" {
  description = "The name of the GCP Project where all resources will be launched."
  type        = string
}

variable "service_account_id" {
  description = "The name of the custom service account. This parameter is limited to a maximum of 28 characters."
  type        = string
}

variable "service_account_name" {
  description = "The description of the custom service account."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL MODULE PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "service_account_roles" {
  description = "Additional roles to be added to the service account."
  type  = list(string)
  default = []
}