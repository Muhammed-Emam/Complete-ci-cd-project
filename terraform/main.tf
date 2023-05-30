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
            
            # tags = {
            #   "Name"                                      = "public1"
            #   "kubernetes.io/role/elb"                    = "1"
            #   "kubernetes.io/cluster/CD-CD-Project-cluster" = "owned"    #CD-CD-Project-cluster
            # }

        }
        "private1" =  {
            cidr = var.private1_subnet["cidr"]
            az = var.private1_subnet["az"]
            map_ip = false
            route_table = "private_route"
            
            # tags = {
            #   "Name"                                      = "private1"
            #   "kubernetes.io/role/internal-elb"           = "1"
            #   "kubernetes.io/cluster/CD-CD-Project-cluster" = "owned"    #CD-CD-Project-cluster
            # }

        }


        "public2" = {
            cidr = var.public2_subnet["cidr"]
            az = var.public2_subnet["az"]
            map_ip = true
            route_table = "public_route"

            # tags = {
            #   "Name"                                           = "public2"
            #   "kubernetes.io/role/elb"                         = "1"
            #   "kubernetes.io/cluster/CD-CD-Project-cluster"    = "owned"    #CD-CD-Project-cluster
            # }
        }

        "private2" = {
            cidr = var.private2_subnet["cidr"]
            az = var.private2_subnet["az"]
            map_ip = false
            route_table = "private_route"

            # tags = {
            #   "Name"                                            = "private2"
            #   "kubernetes.io/role/internal-elb"                 = "1"
            #   "kubernetes.io/cluster/CD-CD-Project-cluster"     = "owned"    #CD-CD-Project-cluster
            # }
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
  subnet_id_list_cluster = [module.network.subnet_id["private1"],module.network.subnet_id["private2"]]
  subnet_id_list_worker = [module.network.subnet_id["private1"],module.network.subnet_id["private2"]]
  instance_types_list = var.instance_types_list
  #sg variables
  vpc_id = module.network.vpc_id
  bastion_sg = module.bastion.sg_id
  scaling_config = {
    desired_size = var.scaling_config["desired_size"]
    max_size = var.scaling_config["max_size"]
    min_size= var.scaling_config["min_size"]
  }
}


module "bastion" {
  source = "./modules/bastion"
  instance_type = "t2.micro"
  subnet_id = module.network.subnet_id["public1"]
  key_name = "ci-cd-key"
  vpc_id = module.network.vpc_id
}

locals {
  private_key_variable = module.bastion.private-key
}
output "private-key" {
  value = local.private_key_variable
  sensitive = true
}