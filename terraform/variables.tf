variable "region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "project_tag" {
  type = string
}


variable "public1_subnet" {
    type = object({
      cidr = string
      az = string
    })
}

variable "private1_subnet" {
    type = object({
      cidr = string
      az = string
    })
}
variable "public2_subnet" {
    type = object({
      cidr = string
      az = string
    })
}

variable "private2_subnet" {
    type = object({
      cidr = string
      az = string
    })
}



variable "instance_types_list" {
  type = list(string)
}

variable "scaling_config" {
  type = object({
    desired_size = number
    max_size = number
    min_size = number
  })
}