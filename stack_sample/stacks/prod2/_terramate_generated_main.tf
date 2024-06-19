// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "project_setup" {
  architect        = var.architect
  costcenter       = var.costcenter
  emergency_admins = var.emergency_admins
  owner            = var.owner
  region           = var.region
  source           = "../../modules/basic_subaccount_setup"
  stage            = "PRD"
  team             = var.team
  unit_shortname   = var.unit_shortname
  usage            = "USED_FOR_PRODUCTION"
}
