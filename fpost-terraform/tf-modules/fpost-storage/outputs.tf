output "storage_account_id" {
  value = azurerm_storage_account.sre_storage.id
}

output "storage_account_primary_access_key" {
  value     = azurerm_storage_account.sre_storage.primary_access_key
  sensitive = true
}

output "storage_account_primary_connection_string" {
  value     = azurerm_storage_account.sre_storage.primary_connection_string
  sensitive = true
}

output "container_id" {
  value = azurerm_storage_container.sre_container.id
}
