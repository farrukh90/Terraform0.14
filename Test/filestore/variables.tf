variable "vm_config" {
  type = map(any)
  default = {
    project       = "ckad-302703"
    region        = "us-central1"
    zone          = "us-central1-c"
    instance_name = "terraform-instance"
    machine_type  = "f1-micro"
    image         = "debian-cloud/debian-9"
    firewall_name = "fw-allow-http"
    network_tags  = "web"
    filestore_name     = "nfsserver"
    capacity_gb   = 2660
    tier          = "BASIC_HDD"
  }
}
variable "labels" {
  type = map(any)
  default = {
    name    = "db"
    env     = "dev"
    team    = "devops"
    quarter = "first"
    builtby = "me"
  }
}