variable "config" {
  type = map(any)
  default = {
    dns_record = "wordpress"
    dns_name   = "acirrustech.net."
    rrdatas    = "127.0.0.1"
  }
}