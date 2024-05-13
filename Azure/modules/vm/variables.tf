variable "vm_username" {
    type = string
  default = "ekansh-linux-vm"

}

variable "vm_password" {
    type = string
    default = "Ekansh@123"
  
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
 default = "10.0.0.0/16"
}

