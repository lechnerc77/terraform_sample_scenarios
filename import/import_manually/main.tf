resource "btp_subaccount" "sa_project1" {
  name        = data.btp_subaccount.ds_project1.name
  subdomain   = data.btp_subaccount.ds_project1.subdomain
  region      = data.btp_subaccount.ds_project1.region
  usage       = data.btp_subaccount.ds_project1.usage
  labels      = data.btp_subaccount.ds_project1.labels
  description = data.btp_subaccount.ds_project1.description
}

resource "btp_subaccount_role_collection_assignment" "sa_project_admin" {
  subaccount_id        = var.subaccount_id
  role_collection_name = "Subaccount Administrator"
  user_name            = "christian.lechner@sap.com"
}


resource "btp_subaccount_entitlement" "et_project1_hanacloud" {
  subaccount_id = var.subaccount_id
  service_name  = "hana-cloud"
  plan_name     = "hana"
}

resource "btp_subaccount_entitlement" "et_project1_buildapps" {
  subaccount_id = var.subaccount_id
  service_name  = "sap-build-apps"
  plan_name     = "standard"
}

data "btp_subaccount_service_plan" "ds_service_plan_alertnotif__free" {
  subaccount_id = var.subaccount_id
  name          = "free"
  offering_name = "alert-notification"
}

resource "btp_subaccount_service_instance" "si_project1_alertnotification__free" {
  subaccount_id  = var.subaccount_id
  serviceplan_id = data.btp_subaccount_service_plan.ds_service_plan_alertnotif__free.id
  name           = var.si_alert_notif_name
}

resource "btp_subaccount_subscription" "as_project1_content_agent_ui__free" {
  subaccount_id = var.subaccount_id
  app_name      = "content-agent-ui"
  plan_name     = "free"
}