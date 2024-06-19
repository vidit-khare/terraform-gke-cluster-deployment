output "node_names" {
  value = google_container_node_pool.primary_preemptible_nodes.*
}