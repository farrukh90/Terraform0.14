provider "aws" {
	region = "us-east-1"
}

data "aws_availability_zones" "available" {
	state = "available"
}
output "AZ" {
	value = data.aws_availability_zones.available.names
}
