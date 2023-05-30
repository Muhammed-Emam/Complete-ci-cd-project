data "aws_secretsmanager_secret" "by-arn" {
  arn = var.SECRET_ARN
}

data "aws_secretsmanager_secret_version" "secret-version" {
  secret_id = data.aws_secretsmanager_secret.by-arn.id
}

# create the ~/.aws/credentials file and populate it with the AWS access key and secret key obtained from a JSON-encoded secrets manager secret.
mkdir /home/ubuntu/.aws
echo "[eks-creator]" >> /home/ubuntu/.aws/credentials
echo "aws_access_key_id = ${jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["access_key"]}" >> /home/ubuntu/.aws/credentials
echo "aws_secret_access_key = ${jsondecode(data.aws_secretsmanager_secret_version.secret-version.secret_string)["secret_key"]}" >> /home/ubuntu/.aws/credentials
aws eks update-kubeconfig --region us-east-1 --name eks-cluster --profile=eks-creator


resource "aws_key_pair" "generated_key" {

  key_name = "aws_keys_pairs"
  public_key = tls_private_key.rsa.public_key_openssh
  provisioner "local-exec" {
    command = <<-EOT
      echo '${tls_private_key.rsa.private_key_pem}' > ./../aws_keys_pairs.pem
      chmod 400 aws_keys_pairs.pem
    EOT
  }
}

