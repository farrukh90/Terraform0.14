resource "aws_key_pair" "deployer2" {
  key_name   = "deployer-key2"
  public_key = file("~/.ssh/id_rsa.pub")
}
