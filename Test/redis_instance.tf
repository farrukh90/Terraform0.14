resource "google_redis_instance" "cache" {
  name           = "ha-memory-cache"
  tier           = "STANDARD_HA"
  memory_size_gb = 1
  location_id             = "us-central1-a"
  alternative_location_id = "us-central1-f"
  authorized_network = "default"
  redis_version     = "REDIS_4_0"
  display_name      = "Terraform Test Instance"
  reserved_ip_range = "192.168.0.0/29"
  labels = {
    my_key    = "my_val"
    other_key = "other_val"
  }
}
