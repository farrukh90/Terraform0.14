variable "config" {
  type = map(any)
  default = {
    project                 = "cache-307814"
    region                  = "us-central1"
    zone                    = "us-central1-c"
    name                    = "ha-memory-cache"
    tier                    = "STANDARD_HA"
    memory_size_gb          = 1
    location_id             = "us-central1-a"
    alternative_location_id = "us-central1-f"
    authorized_network      = "default"
    redis_version           = "REDIS_4_0"
    display_name            = "Terraform Test Instance"
    # List of Labels
    my_key                  = "my_val"
    other_key               = "other_val"
  }
}