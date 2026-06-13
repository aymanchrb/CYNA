resource "azurerm_network_security_group" "main" {
  name                = "${var.prefix}-nsg"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "geneva_default" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.geneva.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "paris_default" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.paris.name
  address_prefixes     = ["10.1.1.0/24"]
}

resource "azurerm_subnet_network_security_group_association" "geneva" {
  subnet_id                 = azurerm_subnet.geneva_default.id
  network_security_group_id = azurerm_network_security_group.main.id
}

resource "azurerm_subnet_network_security_group_association" "paris" {
  subnet_id                 = azurerm_subnet.paris_default.id
  network_security_group_id = azurerm_network_security_group.main.id
}
