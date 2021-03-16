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

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_config["bucket_name"]
  force_destroy = true
  storage_class = "REGIONAL"
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}

