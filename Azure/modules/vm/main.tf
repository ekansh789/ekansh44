
variable "subnet_id" {}  


resource "azurerm_public_ip" "azure-public-ip" {
   name = "azure-public-ip"
   location = "southeastasia"
   resource_group_name = "sa1_test_eic_TejalDave"
   allocation_method = "Dynamic"
}

resource "azurerm_network_interface" "azure-vm-network" {
  name = "azure-vm-network"
  location = "southeastasia"
  resource_group_name = "sa1_test_eic_TejalDave"

    ip_configuration {
        name = "myNICconfig"
        subnet_id = var.subnet_id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.azure-public-ip.id

    }
}

resource "azurerm_linux_virtual_machine" "LinuxVM" {
    name = "LinuxVM"
    location = "southeastasia"
    resource_group_name = "sa1_test_eic_TejalDave"
    size = "Standard_DS1_v2"
    admin_username                  = var.vm_username
    admin_password                  = var.vm_password
    disable_password_authentication = false
    network_interface_ids           = [azurerm_network_interface.azure-vm-network.id]

    source_image_reference {
        publisher = "Canonical"
        offer = "UbuntuServer"
        sku = "18.04-LTS"
        version ="latest"
   
    }   
   
    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"

   
    }
    }
  

output "public_ip" {
    value = azurerm_public_ip.azure-public-ip.ip_address
  
}