project       = "ckad-302703"
region        = "us-central1"
zone          = "us-central1-c"
instance_name = "terraform-instance"
machine_type  = "f1-micro"
image         = "debian-cloud/debian-9"
firewall_name = "fw-allow-http"
tags = [
  "Name", "DB",
  "Env", "Dev",
  "Team", "DevOps",
  "Quarter", "1",
  "Built_by", "Me",
]
