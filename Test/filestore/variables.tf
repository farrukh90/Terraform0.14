variable "vm_config" {
  type = map(any)
  default = {
    project       = "ckad-302703"
    region        = "us-central1"
    zone          = "us-central1-c"
    filestore_name     = "nfsserver"
    capacity_gb   = 1024
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