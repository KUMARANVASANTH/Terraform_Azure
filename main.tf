resource "azurerm_resource_group" "resource-group" {
  name     = "Resource Group"
  location = var.location
  tags = {
    environment = "dev"
  }
}
resource "azurerm_databricks_workspace" "Work-space" {
  name                = "Databricks Workspace"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
  sku                 = "Standard"

}