variable "bucket_config" {
        type = map(any)
        default = {
                project = "ckad-302703"
                bucket_name = "bucket-terraform-farrukh"
                region = "us-central1"
                zone = "us-central1-c"
                bucket_location = "US"
        }
}
provider "google" {
        project = var.bucket_config["project"]
        region = var.bucket_config["region"]
        zone = var.bucket_config["zone"]
}

resource "google_storage_bucket" "bucket" {
        name = var.bucket_config["bucket_name"]
        force_destroy = true
        storage_class = "REGIONAL"
}

