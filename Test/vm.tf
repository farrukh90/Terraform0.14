resource "google_compute_instance" "vm_instance" {
  name         = var.vm_config["instance_name"]
  machine_type = var.vm_config["machine_type"]
  boot_disk {
    initialize_params {
      image = var.vm_config["image"]
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  tags = var.tags
}


resource "google_compute_firewall" "allow-http" {
  name    = var.vm_config["firewall_name"]
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
    source_tags  = "DB"
}
