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
      type          = "DELETE"
      storage_class = "REGIONAL"
    }
  }
}

