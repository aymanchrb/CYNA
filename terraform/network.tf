resource "azurerm_virtual_network" "geneva" {
  name                = "${var.prefix}-vnet-geneva"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_virtual_network" "paris" {
  name                = "${var.prefix}-vnet-paris"
  address_space       = ["10.1.0.0/16"]
  location            = "francecentral"
  resource_group_name = azurerm_resource_group.main.name
}
