resource "azurerm_virtual_network" "VNET-1" {
  name                = "virtual_network-1"
  location            = azurerm_resource_group.resource-group-1.location
  resource_group_name = azurerm_resource_group.resource-group-1.name
  address_space       = ["10.12.0.0/16"]
}
resource "azurerm_virtual_network" "VNET-2" {
  name                = "virtual_network-2"
  location            = azurerm_resource_group.resource-group-2.location
  resource_group_name = azurerm_resource_group.resource-group-2.name
  address_space       = ["10.13.0.0/16"]
}
resource "azurerm_subnet" "subnet-vnet-1" {
  name                 = "subnet-vnet-1"
  virtual_network_name = azurerm_virtual_network.VNET-1.name
  resource_group_name  = azurerm_resource_group.resource-group-1.name
  address_prefixes     = ["10.12.1.0/24"]
}
resource "azurerm_subnet" "subnet-vnet-2" {
  name                 = "subnet-vnet-2"
  virtual_network_name = azurerm_virtual_network.VNET-2.name
  resource_group_name  = azurerm_resource_group.resource-group-2.name
  address_prefixes     = ["10.13.1.0/24"]
}
resource "azurerm_virtual_network" "vhub-vnet" {
  name                = "vhub-vnet"
  resource_group_name = azurerm_resource_group.vhub.name
  location            = azurerm_resource_group.vhub.location
  address_space       = ["10.14.0.0/16"]
}
resource "azurerm_subnet" "vhub-subnet" {
  name                 = "vhub-subnet"
  resource_group_name  = azurerm_resource_group.vhub.name
  virtual_network_name = azurerm_resource_group.vhub.name
  address_prefixes     = ["10.14.1.0/24"]
}