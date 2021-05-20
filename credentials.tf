resource "random_password" "password" {
  length = 30
  special = false
  override_special = "_%@"
}

resource "aws_ssm_parameter" "foo" {
  name  = var.identifier
  type  = "SecureString"
  value = random_password.password.result
}

