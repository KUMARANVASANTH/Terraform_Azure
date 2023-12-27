resource "azurerm_virtual_network_gateway_connection" "vnet1-vhub" {
  name                            = "vnet1_to_vhub"
  location                        = azurerm_resource_group.resource-group-1.location
  resource_group_name             = azurerm_resource_group.resource-group-1.name
  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.vnet-1-gateway.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.vhub.id
  shared_key                      = "vnettovhub"
}
resource "azurerm_virtual_network_gateway_connection" "vhub-vnet2" {
  name                            = "vhub_to_vnet1"
  location                        = azurerm_resource_group.vhub.location
  resource_group_name             = azurerm_resource_group.vhub.name
  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.vhub.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.vnet-1-gateway.id
  shared_key                      = "vnettovhub"
}