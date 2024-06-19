terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket-0980"
    prefix  = "terraform-state/gke-cluster"
  }
}
