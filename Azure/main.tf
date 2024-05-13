
module "vnet" {
  source = "./modules/vnet"
   
}

module "nsg" {
  source = "./modules/nsg"
    
}

module "vm" {
  source = "./modules/vm"
   subnet_id = module.vnet.subnet_id

}



output "vm_public_ip" {
  value = module.vm.public_ip  
}

