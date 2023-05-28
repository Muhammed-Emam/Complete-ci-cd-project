# resource "aws_subnet" "subnets" {
  
#   for_each = var.network_subnet
#   vpc_id = aws_vpc.vpc.id
#   cidr_block = each.value["cidr"]
#   availability_zone = each.value["az"]
#   map_customer_owned_ip_on_launch = each.value["map_ip"]

#   tags = {
#     Name = each.key
#     Project = var.project_tag
#   }
# }

# variable network_subnets{
#     type=map(object({
#         cidr = string
#         az = string
#         map_ip = bool
#         route_table = string
#     }))
# }

# module "network" {
#         source= "./modules/network"
#         project_tag= var.project_tag

#         vpc_cidr = var.vpc_id
#         network_subnets= {
#           "public1" = {
#               cidr = var.public1_subnet["cidr"]
#               az = var.public1_subnet["az"]
#               route_table = "public_route"
#               map_ip = true
#           }
#           "public2" = {
#               cidr = var.public2_subnet["cidr"]
#               az = var.public2_subnet["az"]
#               route_table = "public_route"
#               map_ip = true
#           }
#         }


# variable "public1_subnet" {
#   type = object({
#     cidr = string
#     az = string
    
#   })
# }

# variable "public2_subnet" {
#   type = object({
#     cidr = string
#     az = string
#   })
# }
