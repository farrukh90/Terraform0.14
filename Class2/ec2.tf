resource "aws_instance" "web" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer2.key_name
  count = 5
}