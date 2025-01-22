output "name" {

  description = "The name of the storage account"

  value       = azurerm_storage_account.storage.name

}



output "primary_endpoint" {

  description = "The primary endpoint of the storage account"

  value       = azurerm_storage_account.storage.primary_blob_endpoint

}