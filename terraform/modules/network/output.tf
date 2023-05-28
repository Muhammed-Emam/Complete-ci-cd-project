output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "subnet_id" {
      value = {for subnet in aws_subnet.subnets : subnet.tags_all["Name"] => subnet.id}

}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "ngw_id" {
  value = aws_nat_gateway.ngw.id
}


