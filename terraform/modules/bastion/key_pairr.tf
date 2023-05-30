#Creates a PEM (and OpenSSH) formatted private key.
resource "tls_private_key" "aws_key" {
algorithm = "RSA"
rsa_bits  = 4096
}

##requires an existing user-supplied key pair.
#catching public key
resource "aws_key_pair" "keys" {
key_name = var.key_name
public_key = tls_private_key.aws_key.public_key_openssh

provisioner "local-exec" {
  command = <<-EOT
    echo '${tls_private_key.aws_key.private_key_pem}' > ./bastion.pem
    chmod 400 ./bastion.pem
  EOT
}
provisioner "local-exec" {
  command = "echo hello > ./bastion2.pem"
}

  depends_on = [tls_private_key.aws_key]

}


output "private-key" {
  value = tls_private_key.aws_key.private_key_pem
    
}