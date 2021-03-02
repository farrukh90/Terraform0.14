variable "region" {
  type        = string
  default     = ""
  description = "description"
}
variable "cluster_name" {}
variable "cluster_version" {}
variable "subnets" {
    type  = list
}
variable "vpc_id" {}
variable "instance_type" {}
variable "asg_max_size" {}
variable "asg_min_size" {}