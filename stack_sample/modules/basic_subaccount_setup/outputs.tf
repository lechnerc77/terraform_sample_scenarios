output "subaccount_id" {
  value       = btp_subaccount.sa_project.id
  description = "The ID of the project subaccount."
}

output "subaccount_name" {
  value       = btp_subaccount.sa_project.name
  description = "The name of the project subaccount."
}
