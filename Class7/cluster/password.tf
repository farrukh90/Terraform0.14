resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}


resource "aws_ssm_parameter" "foo" {
  name  = "dbpass"
  type  = "SecureString"
  value = random_password.password.result
}