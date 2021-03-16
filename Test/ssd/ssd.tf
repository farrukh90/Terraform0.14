resource "google_compute_disk" "default" {
  name = var.config["name"]
  type = var.config["type"]
  zone = var.config["zone"]
  size = var.config["size"]
  labels = {
    environment = var.config["environment"]
  }
}