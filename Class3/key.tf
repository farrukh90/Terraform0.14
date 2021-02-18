resource "aws_key_pair" "deployer3" {
	key_name = "deployer-key3"
	public_key = file("~/.ssh/id_rsa.pub")
}
