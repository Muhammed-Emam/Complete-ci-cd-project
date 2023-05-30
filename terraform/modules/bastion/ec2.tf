data "aws_ami" "ubuntu_img" {
    most_recent = true
    # ubuntu ami account ID
    owners = ["099720109477"]

    filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20230325"]
    }


}

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.ubuntu_img.id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = aws_key_pair.keys.id
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  
  
  user_data              = file("${path.module}/startup.sh")
  
  provisioner "local-exec" {
    command = "echo '${self.public_ip}' > ./../ansible/inventory"
  }
  
  tags = {
    Name = "bastion"
  }
}
