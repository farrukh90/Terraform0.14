resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 100
}


resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}


resource "aws_ebs_volume" "example2" {
  availability_zone = "us-east-1a"
  size              = 100
}


resource "aws_volume_attachment" "ebs_att2" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example2.id
  instance_id = aws_instance.web2.id
}
