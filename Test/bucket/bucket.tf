provider "google" {
  project = var.bucket_config["project"]
  region  = var.bucket_config["region"]
}
resource "google_storage_bucket" "default" {
  name          = var.bucket_config["bucket_name"]
  location      = var.bucket_config["region"]
  storage_class = var.bucket_config["storage_class"]
  force_destroy = false
  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = var.bucket_config["storage_class"]
    }
    condition {
      age                   = 60
      created_before        = "2017-06-13"
      with_state            = "ANY"
      matches_storage_class = ["REGIONAL"]
      num_newer_versions    = 10
    }
  }
}

