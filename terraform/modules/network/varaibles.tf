variable "project_tag" {
    type = string
}

#vpc_variables
variable "vpc_cidr" {
  type = string
}

#subnet_variables
#Subnets
# #Subnet
variable network_subnets{
    type=map(object({
        cidr = string
        az = string
        map_ip = bool
        route_table = string
    }))
}



#route table
variable network_route_table{
    type=map(object({
        cidr = string
        gateway_id = string
    }))
}