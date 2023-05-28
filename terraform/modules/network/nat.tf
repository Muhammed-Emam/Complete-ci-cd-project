resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id = aws_subnet.subnets["public1"].id

  tags = {
    Name = var.project_tag
    Project = var.project_tag
  }

  depends_on = [ aws_internet_gateway.igw ]
}

resource "aws_eip" "nat-eip" {
  #vpc = true
  domain = "vpc"
}