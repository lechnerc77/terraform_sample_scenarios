generate_hcl "_terramate_generated_provider.tf" {
  content {
    terraform {
      required_version = global.terraform.version

      required_providers {
        btp = {
          source  = "SAP/btp"
          version = global.terraform.providers.btp.version
        }
      }
    }
    provider "btp" {
      globalaccount = var.globalaccount
    }
  }
}