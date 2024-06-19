
resource "google_service_account" "service_account" {
  project      = var.project
  account_id   = var.service_account_id
  display_name = var.service_account_name
}

# Grant the service account the minimum necessary roles and permissions in order to run the GKE cluster

resource "google_project_iam_member" "service_account_roles" {
  for_each = toset(var.service_account_roles)
  project = var.project
  role    = each.value
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
