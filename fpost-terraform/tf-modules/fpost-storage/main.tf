resource "azurerm_resource_group" "sre_rg" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_storage_account" "sre_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.sre_rg.name
  location                 = azurerm_resource_group.sre_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier

  tags = var.tags
}

resource "azurerm_storage_container" "sre_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sre_storage.name
  container_access_type = var.container_access_type
}
