resource "azurerm_virtual_machine" "vm-1" {
  name                  = "vm-1"
  resource_group_name   = azurerm_resource_group.resource-group-1.name
  location              = azurerm_resource_group.resource-group-1.location
  vm_size               = "Standard_DS1_v2"
  network_interface_ids = [azurerm_network_interface.nic-1.id]
  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "vm-1-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "vm-1-admin"
    admin_password = "Abc@12345"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "dev"
  }
}