variable "region" {}
variable "subnet_ids" {
  type = list(any)
}

variable "db_access" {
  type = list(any)
}