resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  project  =  var.project

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  binary_authorization {
    evaluation_mode = var.binary_auth_enabled ? "PROJECT_SINGLETON_POLICY_ENFORCE" : "DISABLED"
  }

  cost_management_config {
    enabled = var.cost_management_config_flag
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }

  release_channel {
    channel = var.release_channel
  }

  min_master_version = var.min_cluster_version == "" ? null : var.min_cluster_version

  vertical_pod_autoscaling {
    enabled = var.auto_scaling
  }

  enable_shielded_nodes = true

  workload_identity_config {
    workload_pool = "${var.project}.svc.id.goog"
  }
  
  resource_labels = {
    "owner" = "vidit-khare"
    "purpose" = "demo-project"
    "environment" = "dev"
  }

 deletion_protection = var.is_management_cluster

}
