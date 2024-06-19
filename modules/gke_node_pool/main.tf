resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.node_pool_name
  project    = var.project
  location   = var.region
  cluster    = var.cluster_name
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = var.node_pool_machine_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = var.service_account_email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
  }

  management {
      auto_repair  = "true"
      auto_upgrade = "true"
  }
}