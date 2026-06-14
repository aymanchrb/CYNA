output "resource_group_name" {
  description = "Nom du resource group"
  value       = azurerm_resource_group.cyna_rg.name
}

output "vnet_id" {
  description = "ID du réseau virtuel"
  value       = azurerm_virtual_network.cyna_vnet.id
}

output "vnet_address_space" {
  description = "Espace d'adressage du VNet"
  value       = azurerm_virtual_network.cyna_vnet.address_space
}

output "subnet_dmz_id" {
  description = "ID subnet DMZ"
  value       = azurerm_subnet.dmz.id
}

output "subnet_app_id" {
  description = "ID subnet APP"
  value       = azurerm_subnet.app.id
}

output "subnet_db_id" {
  description = "ID subnet DB"
  value       = azurerm_subnet.db.id
}

output "subnet_admin_id" {
  description = "ID subnet ADMIN"
  value       = azurerm_subnet.admin.id
}

output "subnet_soc_id" {
  description = "ID subnet SOC"
  value       = azurerm_subnet.soc.id
}

output "subnet_identity_id" {
  description = "ID subnet IDENTITY"
  value       = azurerm_subnet.identity.id
}
