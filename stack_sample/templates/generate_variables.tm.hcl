generate_hcl "_terramate_generated_variables.tf" {
  content {
    variable "globalaccount" {
      type        = string
      description = "The globalaccount subdomain where the sub account shall be created."
    }

    variable "region" {
      type        = string
      description = "The region where the account shall be created in."
      default     = "us10"
    }

    variable "unit_shortname" {
      type        = string
      description = "Short name for the organisation the sub account shall belong to."
    }

    variable "architect" {
      type        = string
      description = "Defines the email address of the architect for the subaccount"
      default     = "genius.architect@test.com"
    }

    variable "costcenter" {
      type        = string
      description = "Defines the costcenter for the subaccount"
      default     = "1234509874"
    }

    variable "owner" {
      type        = string
      description = "Defines the owner of the subaccount"
      default     = "someowner@test.com"
    }

    variable "team" {
      type        = string
      description = "Defines the team of the sub account"
      default     = "awesome_dev_team@test.com"
    }

    variable "emergency_admins" {
      type        = list(string)
      description = "Defines the colleagues who are added to each subaccount as emergency administrators."
      default     = global.terraform.rolecollections.subaccount_admins_prod.admin_list
    }
  }
}