resource "google_filestore_instance" "instance" {
  provider = google-beta
  name = var.vm_config["filestore_name"]
  zone = var.vm_config["zone"]
  tier = var.vm_config["tier"]

  file_shares {
    capacity_gb = var.vm_config["capacity_gb"]
    name        = "share1"

    nfs_export_options {
      ip_ranges = ["0.0.0.0/0"]
      access_mode = "READ_WRITE"
      squash_mode = "NO_ROOT_SQUASH"
   }

  # networks {
  #   network = "default"
  #   modes   = ["MODE_IPV4"]
  # }
}
}