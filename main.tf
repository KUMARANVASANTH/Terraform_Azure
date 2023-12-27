resource "azurerm_resource_group" "resource-group-1" {
  name     = "resource-group"
  location = var.location
  tags = {
    environment = "dev"
  }
}
resource "azurerm_resource_group" "resource-group-2" {
  name     = "resource-group-2"
  location = var.location-2
  tags = {
    environment = "dev"
  }
}
resource "azurerm_resource_group" "vhub" {
  name     = "vhub"
  location = var.location-3
  tags = {
    environment = "dev"
  }
}