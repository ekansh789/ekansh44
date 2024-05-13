variable "vnet_name" {
  type        = string
  default = "ekansh-virtual-network"
}

variable "vnet_location" {
  type    = string
  default = "southeast Asia"
}

variable "vnet_resource_group_name" {
  type    = string
  default = "sa1_test_eic_TejalDave"
}

variable "vnet_address_space" {
  type        = string
  default= "10.0.0.0/16"
}

