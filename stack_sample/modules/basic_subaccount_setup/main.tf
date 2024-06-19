# ------------------------------------------------------------------------------------------------------
# Setup of names in accordance to naming convention
# ------------------------------------------------------------------------------------------------------
resource "random_id" "subaccount_domain_suffix" {
  byte_length = 12
}

locals {
  project_subaccount_name = "${var.unit_shortname}_${var.stage}"
  # Remove all blanks and substitute all "_" with a "-"
  project_subaccount_domain = join("-", [replace(lower(replace("${local.project_subaccount_name}", "_", "-")), " ", ""), random_id.subaccount_domain_suffix.hex])
}

# ------------------------------------------------------------------------------------------------------
# Creation of subaccount
# ------------------------------------------------------------------------------------------------------
resource "btp_subaccount" "sa_project" {
  name      = local.project_subaccount_name
  subdomain = local.project_subaccount_domain
  region    = lower(var.region)
  labels = {
    "architect" : ["${var.architect}"]
    "costcenter" : ["${var.costcenter}"],
    "owner" : ["${var.owner}"],
    "team" : ["${var.team}"]
  }
  usage = var.usage
}

# ------------------------------------------------------------------------------------------------------
# Assignment of emergency admins to the sub account as sub account administrators
# ------------------------------------------------------------------------------------------------------
resource "btp_subaccount_role_collection_assignment" "rca_project_sa_admins" {
  for_each             = toset("${var.emergency_admins}")
  subaccount_id        = btp_subaccount.sa_project.id
  role_collection_name = "Subaccount Administrator"
  user_name            = each.value
}

