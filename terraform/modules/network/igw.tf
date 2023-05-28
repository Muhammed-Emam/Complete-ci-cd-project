resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.project_tag
    Project = var.project_tag
  }
}