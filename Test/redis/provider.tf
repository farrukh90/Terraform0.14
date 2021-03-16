provider "google" {
  project = var.config["project"]
  region  = var.config["region"]
  zone    = var.config["zone"]
}
