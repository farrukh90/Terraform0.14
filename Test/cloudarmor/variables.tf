variable "config" {
  type = map(any)
  default = {
    project = "ckad-302703"
  }
}
variable blacklisted_ips {
  type = list 
  default = "9.9.9.0/24"
}