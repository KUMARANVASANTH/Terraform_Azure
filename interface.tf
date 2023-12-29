# resource "azurerm_network_interface" "nic-1" {
#   name                = "nic-1"
#   resource_group_name = azurerm_resource_group.resource-group-1.name
#   location            = azurerm_resource_group.resource-group-1.location
#   ip_configuration {
#     name                          = "nic-config"
#     subnet_id                     = azurerm_subnet.subnet-vnet-1.id
#     public_ip_address_id          = azurerm_public_ip.vm-1-ip.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }