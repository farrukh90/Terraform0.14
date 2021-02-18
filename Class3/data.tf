# This line pulls Ubuntu AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}


# Shows AMI ID
output "UBUNTU_ID" {
  value = data.aws_ami.ubuntu.id
}

# This line pulls CentOS AMI 
data "aws_ami" "centos" {
  most_recent = true
  owners = ["679593333241"] # CentOS Owner
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM *"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Shows AMI ID
output "CENTOS_ID" {
  value = data.aws_ami.centos.id
}

data "aws_availability_zones" "all" {}

output "AZ" {
    value =   data.aws_availability_zones.all.names
}


resource "aws_instance" "web" {
    ami = data.aws_ami.centos.id
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer3.key_name
    vpc_security_group_ids      = [aws_security_group.allow_tls.id]
}