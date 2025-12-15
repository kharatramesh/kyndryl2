resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_resource_group" "rg1" {
  name     = "test1"
  location = var.location
}