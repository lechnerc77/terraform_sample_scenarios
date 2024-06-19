generate_hcl "_terramate_generated_main.tf" {

  lets {
    stage = tm_upper(tm_element(terramate.stack.tags, 0))
  }

  content {
    # ------------------------------------------------------------------------------------------------------
    # Call module for creating subaccoun
    # ------------------------------------------------------------------------------------------------------
    module "project_setup" {

      source = "${global.terraform.modules.btp_subaccount_module.source}"

      stage  = "${let.stage}"
      region = var.region

      unit_shortname   = var.unit_shortname
      architect        = var.architect
      costcenter       = var.costcenter
      owner            = var.owner
      team             = var.team
      emergency_admins = var.emergency_admins
      usage            = "USED_FOR_PRODUCTION"
    }
  }
}
