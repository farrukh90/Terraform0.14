module "wordpress" {
  app_name         = "wordpress"
  source           = "farrukh90/aws/asg-elb"
  aws_region       = "us-east-1"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
  key_name         = "wordpress_key"
  key_location     = "~/.ssh/id_rsa.pub"
  ssh_cidr_blocks  = [
    "127.0.0.1/32",
    "0.0.0.0/0"
  ]
}