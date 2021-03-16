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
  storage_class = "REGIONAL"
  force_destroy = false
  lifecycle_rule {
    action {
      type          = "DELETE"
      storage_class = "REGIONAL"
    }
    condition {
      age                   = 60
      created_before        = 2017-06-13
      with_state            = "ANY"
      matches_storage_class = ["REGIONAL"]
      num_newer_versions    = 10
    }
  }
}

