output "email" {
  description = "The email address of the custom service account."
  value       = google_service_account.service_account.email
}

output "iam_members" {
  description = "The list of members available in gcp project"
  value =  { for member in google_project_iam_member.service_account_roles : member.role => member.member }
}

 