resource "aws_subnet" "public1" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr1
	availability_zone = data.aws_availability_zones.available.names[0]
	map_public_ip_on_launch = true
	tags = var.tags
}

resource "aws_subnet" "public2" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr2
	availability_zone = data.aws_availability_zones.available.names[1]
	map_public_ip_on_launch = true
	tags = var.tags
}
resource "aws_subnet" "public3" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr3
	availability_zone = data.aws_availability_zones.available.names[2]
	map_public_ip_on_launch = true
	tags = var.tags
}
