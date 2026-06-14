# Resource Group
resource "azurerm_resource_group" "cyna_rg" {
  name     = "Cyna-projet-frc-01"
  location = "Poland Central"
  tags = {
    "Projet"      = "cyna"
    "environment" = "lab"
    "managedby"   = "terraform"
    "owner"       = "groupe-1"
  }
}

# VNet
resource "azurerm_virtual_network" "cyna_vnet" {
  name                = "vnet-cyna-gva-01"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.cyna_rg.location
  resource_group_name = azurerm_resource_group.cyna_rg.name
}

# Subnets
resource "azurerm_subnet" "admin" {
  name                            = "snet-cyna-admin-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.40.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "app" {
  name                            = "snet-cyna-app-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.20.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "db" {
  name                            = "snet-cyna-db-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.30.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "dmz" {
  name                            = "snet-cyna-dmz-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.10.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "endpoints" {
  name                            = "snet-cyna-endpoints-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.60.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "identity" {
  name                            = "snet-cyna-identity-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.80.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "soc" {
  name                            = "snet-cyna-soc-01"
  resource_group_name             = azurerm_resource_group.cyna_rg.name
  virtual_network_name            = azurerm_virtual_network.cyna_vnet.name
  address_prefixes                = ["10.0.50.0/24"]
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.cyna_rg.name
  virtual_network_name = azurerm_virtual_network.cyna_vnet.name
  address_prefixes     = ["10.0.11.0/26"]
}
