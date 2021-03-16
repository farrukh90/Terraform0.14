variable "bucket_config" {
  type = map(any)
  default = {
    project         = "ckad-302703"
    bucket_name     = "bucket-terraform-farrukh"
    region          = "us-central1"
  }
}
provider "google" {
  project = var.bucket_config["project"]
  region  = var.bucket_config["region"]
}
resource "google_storage_bucket" "default" {
  name          = var.bucket_config["name"]
  location      = var.bucket_config["region"]
  storage_class = var.storage_class
  force_destroy = var.force_destroy
  lifecycle_rule {
    action {
      type          = var.action_type
      storage_class = var.action_storage_class
    }
    condition {
      age                   = var.age
      created_before        = var.created_before
      with_state            = var.with_state
      matches_storage_class = var.matches_storage_class
      num_newer_versions    = var.num_newer_versions
    }
  }
}

