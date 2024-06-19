module "service_account" {
  source = "../../modules/service_account"
  service_account_id = var.service_account_id
  service_account_name = var.service_account_name
  project     = var.project
  service_account_roles = var.service_account_roles
}

module "gke_cluster" {
  source = "../../modules/gke_cluster"
  project = var.project
  region = var.region
  cluster_name = var.cluster_name
}

module "gke_node_pool" {
  source = "../../modules/gke_node_pool"
  project = var.project
  region = var.region
  cluster_name = module.gke_cluster.name
  node_pool_name = var.node_pool_name
  service_account_email = module.service_account.email
}