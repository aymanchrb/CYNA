output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vnet_geneva_id" {
  value = azurerm_virtual_network.geneva.id
}

output "vnet_paris_id" {
  value = azurerm_virtual_network.paris.id
}
