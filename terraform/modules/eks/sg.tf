resource "aws_security_group" "EKS_sg" {
  name        = "EKS_sg"
  vpc_id      = var.vpc_id

  ingress {
    description     = "ssh from outside"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [var.bastion_sg]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "public_sg"
  }
}