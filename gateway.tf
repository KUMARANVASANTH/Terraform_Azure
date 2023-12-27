resource "azurerm_virtual_network_gateway" "vnet-1-gateway" {
  name                = "VNET-1-Gateway"
  location            = azurerm_resource_group.resource-group-1.location
  resource_group_name = azurerm_resource_group.resource-group-1.name
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "Basic"
  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.vnet-1-ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.Gatewaysubnet-1.id
  }
}
resource "azurerm_virtual_network_gateway" "vnet-2-gateway" {
  name                = "VNET-2-Gateway"
  location            = azurerm_resource_group.resource-group-2.location
  resource_group_name = azurerm_resource_group.resource-group-2.name
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "Basic"
  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.vnet-2-ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.Gatewaysubnet-2.id
  }
}
resource "azurerm_virtual_network_gateway" "vhub" {
  name                = "vhub-gateway"
  location            = azurerm_resource_group.vhub.location
  resource_group_name = azurerm_resource_group.vhub.name
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "Basic"
  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.vhub-ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.Gatewaysubnet-vhub.id
  }
}