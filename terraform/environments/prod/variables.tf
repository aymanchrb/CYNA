variable "location" {
  description = "Région Azure"
  type        = string
  default     = "Poland Central"
}

variable "resource_group_name" {
  description = "Nom du resource group"
  type        = string
  default     = "Cyna-projet-frc-01"
}

variable "vnet_name" {
  description = "Nom du réseau virtuel"
  type        = string
  default     = "vnet-cyna-gva-01"
}

variable "vnet_address_space" {
  description = "Espace d'adressage du VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnets" {
  description = "Configuration des subnets"
  type = map(object({
    name   = string
    prefix = string
  }))
  default = {
    dmz = {
      name   = "snet-cyna-dmz-01"
      prefix = "10.0.10.0/24"
    }
    app = {
      name   = "snet-cyna-app-01"
      prefix = "10.0.20.0/24"
    }
    db = {
      name   = "snet-cyna-db-01"
      prefix = "10.0.30.0/24"
    }
    admin = {
      name   = "snet-cyna-admin-01"
      prefix = "10.0.40.0/24"
    }
    soc = {
      name   = "snet-cyna-soc-01"
      prefix = "10.0.50.0/24"
    }
    endpoints = {
      name   = "snet-cyna-endpoints-01"
      prefix = "10.0.60.0/24"
    }
    identity = {
      name   = "snet-cyna-identity-01"
      prefix = "10.0.80.0/24"
    }
  }
}

variable "tags" {
  description = "Tags Azure"
  type        = map(string)
  default = {
    "Projet"      = "cyna"
    "environment" = "lab"
    "managedby"   = "terraform"
    "owner"       = "groupe-1"
  }
}
