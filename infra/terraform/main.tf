provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-portfolio-devops"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "lahbariacr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-portfolio"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "portfolio"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s" # free-tier eligible
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_key_vault" "kv" {
  name                        = "lahbarikeyvault"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
  soft_delete_enabled         = true
  purge_protection_enabled    = false
}

data "azurerm_client_config" "current" {}
