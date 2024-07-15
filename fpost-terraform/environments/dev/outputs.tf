output "storage_account_id" {
  value = module.fpost-storage.storage_account_id
}

output "storage_account_primary_access_key" {
  value     = module.fpost-storage.storage_account_primary_access_key
  sensitive = true
}

output "storage_account_primary_connection_string" {
  value     = module.fpost-storage.storage_account_primary_connection_string
  sensitive = true
}

output "container_id" {
  value = module.fpost-storage.container_id
}