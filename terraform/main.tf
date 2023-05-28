module "network" {
    source = "./modules/network"
    vpc_cidr = var.vpc_cidr
    project_tag= var.project_tag


    network_subnets = {
        "public1" =  {
            cidr = var.public1_subnet["cidr"]
            az = var.public1_subnet["az"]
            map_ip = true
            route_table = "public_route"
        }

        "public2" = {
            cidr = var.private1_subnet["cidr"]
            az = var.private1_subnet["az"]
            map_ip = true
            route_table = "public_route"
        }
    }

    network_route_table = {
      "public_route" = {
        cidr = "0.0.0.0/0"
        gateway_id = module.network.igw_id
      }
      "private_route" = {
        cidr = "0.0.0.0/0"
        gateway_id = module.network.ngw_id
      }
    }


}

module "eks" {
  source = "./modules/eks"
  project = var.project_tag
  subnet_id_list_cluster = [module.network.subnet_id["public2"],module.network.subnet_id["public1"]]
  subnet_id_list_worker = [module.network.subnet_id["public2"],module.network.subnet_id["public1"]]
  instance_types_list = var.instance_types_list
  
  scaling_config = {
    desired_size = var.scaling_config["desired_size"]
    max_size = var.scaling_config["max_size"]
    min_size= var.scaling_config["min_size"]
  }
}