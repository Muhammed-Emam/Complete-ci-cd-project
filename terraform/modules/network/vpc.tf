resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = var.project_tag
        Project = var.project_tag
    }
}