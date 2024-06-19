variable "globalaccount" {
  description = "The global account name"
  type        = string
}

variable "cli_server_url" {
  description = "The BTP CLI server URL"
  type        = string
  default     = "https://cli.btp.cloud.sap"

}

variable "subaccount_id" {
  description = "The ID of the subaccount"
  type        = string
}

variable "si_alert_notif_name" {
  description = "The ID of the alert notification service instance"
  type        = string
}

variable "si_alert_notif_id" {
  description = "The ID of the alert notification service instance"
  type        = string
}