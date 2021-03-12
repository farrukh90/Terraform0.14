variable "config" {
  type = map(any)
  default = {
    project       = "ckad-302703"
    dns_record = "wordpress"
    dns_name   = "acirrustech.net."
    rrdatas    = "127.0.0.1"
  }
}