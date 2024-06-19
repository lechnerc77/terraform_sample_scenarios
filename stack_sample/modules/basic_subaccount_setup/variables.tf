###
# Possible values for entering the short name business unit
###
variable "unit_shortname" {
  type        = string
  description = "Short name for the organisation the sub account shall belong to."
  default     = "Test"


  validation {
    condition     = can(regex("^[a-zA-Z0-9_]", var.unit_shortname))
    error_message = "Please enter a valid short name for the 'unit' the subaccount is assigned to."
  }
}

###
# Email address of the architect
###
variable "architect" {
  type        = string
  description = "Defines the email address of the architect for the subaccount"

  validation {
    condition     = can(regex("(@yourorg.com|@test.com)$", var.architect))
    error_message = "Please enter a valid email address for the architect of the subaccount."
  }
}

###
# Usage of the subaccount
###
variable "usage" {
  type        = string
  description = "Defines the usage pattern of the subaccount."
}

###
# Email address of the costreference
###
variable "costcenter" {
  type        = string
  description = "Defines the costcenter for the subaccount"

  validation {
    condition     = can(regex("^[0-9]{10}$", var.costcenter))
    error_message = "Please enter a valid costcenter for the business unit."
  }
}

###
# Owner of the subaccount
###
variable "owner" {
  type        = string
  description = "Defines the owner of the subaccount"
  default     = "jane.doe@test.com"

  validation {
    condition     = can(regex("(@yourorg.com|@test.com)$", var.owner))
    error_message = "Please enter a valid email address for the owner of the sub account."
  }
}

###
# Team of the sub account
###
variable "team" {
  type        = string
  description = "Defines the team of the sub account"
  default     = "sap.team@test.com"

  validation {
    condition     = can(regex("(@yourorg.com|@test.com)$", var.team))
    error_message = "Please enter a valid email address for the team of the sub account."
  }
}

###
# Stage of the subaccount
###
variable "stage" {
  type        = string
  description = "The stage/tier the sub account will be used for."
  default     = "DEV"

  validation {
    condition     = contains(["DEV", "TST", "PRD", "EDU"], var.stage)
    error_message = "Select a valid stage for the sub account."
  }
}

###
# Region of BTP sub account
###
variable "region" {
  type        = string
  description = "The region where the sub account shall be created in."
  default     = "us10"
}

###
# List of emergency admins
###
variable "emergency_admins" {
  type        = list(string)
  description = "Defines the colleagues who are added to each subaccount as emergency administrators."
}
