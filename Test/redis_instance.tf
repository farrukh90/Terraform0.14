resource "google_redis_instance" "cache" {
  name                    = var.config["name"]
  tier                    = var.config["tier"]
  memory_size_gb          = var.config["memory_size_gb"]
  location_id             = var.config["location_id"]
  alternative_location_id = var.config["alternative_location_id"]
  authorized_network      = var.config["authorized_network"]
  redis_version           = var.config["redis_version"]
  display_name            = var.config["display_name"]
  labels = {
    my_key    = var.config["my_key"]
    other_key = var.config["other_key"]
  }
}
