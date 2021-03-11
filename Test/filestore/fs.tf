resource "google_filestore_instance" "instance" {
  name = var.vm_config["filestore_name"]
  zone = var.vm_config["zone"]
  tier = var.vm_config["tier"]

  file_shares {
    capacity_gb = var.vm_config["capacity_gb"]
    name        = "share1"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}