resource "aws_security_group" "public_sg" {
  name        = "allow_public"
  description = "allow_public"
  vpc_id      = var.vpc_id

  ingress {
    description = "ssh from outside"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "public-sg"
  }
}

output "sg_id" {
  value = aws_security_group.public_sg.id
}