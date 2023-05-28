variable "project" {
  type = string
}

variable "subnet_id_list_cluster" {
  type = list(string)
}

variable "subnet_id_list_worker" {
  type = list(string)
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