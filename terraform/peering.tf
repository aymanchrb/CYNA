resource "azurerm_virtual_network_peering" "geneva_to_paris" {
  name                      = "geneva-to-paris"
  resource_group_name       = azurerm_resource_group.main.name
  virtual_network_name      = azurerm_virtual_network.geneva.name
  remote_virtual_network_id = azurerm_virtual_network.paris.id
}

resource "azurerm_virtual_network_peering" "paris_to_geneva" {
  name                      = "paris-to-geneva"
  resource_group_name       = azurerm_resource_group.main.name
  virtual_network_name      = azurerm_virtual_network.paris.name
  remote_virtual_network_id = azurerm_virtual_network.geneva.id
}
