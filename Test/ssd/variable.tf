variable "config" {
  type = map(any)
  default = {
    project = "cache-307814"
    region  = "us-central1"
    zone    = "us-central1-c"
    name    = "test-disk"
    type    = "pd-ssd"
    size    = 5
    # Labels
    environment = "dev"
  }
}
