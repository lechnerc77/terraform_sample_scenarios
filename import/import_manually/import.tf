###
#IMPORTANT: VALUES IN THE IMPORTS MUST BE STATICALLY KNOWN AT THE TIME OF PLAN
###
import {
  to = btp_subaccount.sa_project1
  id = var.subaccount_id
}

import {
  to = btp_subaccount_entitlement.et_project1_hanacloud
  id = "${var.subaccount_id},hana-cloud,hana"
}

import {
  to = btp_subaccount_entitlement.et_project1_buildapps
  id = "${var.subaccount_id},sap-build-apps,standard"
}

import {
  to = btp_subaccount_service_instance.si_project1_alertnotification__free
  id = "${var.subaccount_id},${var.si_alert_notif_id}"
}

import {
  to = btp_subaccount_subscription.as_project1_content_agent_ui__free
  id = "${var.subaccount_id},content-agent-ui,free"
}
