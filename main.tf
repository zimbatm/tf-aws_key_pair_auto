variable "key_name" {
  description = "Name of the SSH aws_key_pair"
}

# ----------------------------------------------------------------------

resource "tls_private_key" "default" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "aws_key_pair" "default" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.default.public_key_openssh}"
}

# ----------------------------------------------------------------------

output "key_name" {
  value = "${aws_key_pair.default.key_name}"
}

/*
# Note supported in all AWS provider versions
output "fingerprint" {
  value = "${aws_key_pair.default.fingerprint}"
}
*/

output "public_key" {
  value = "${tls_private_key.default.public_key_openssh}"
}

output "private_key" {
  sensitive = true
  value     = "${tls_private_key.default.private_key_pem}"
}
