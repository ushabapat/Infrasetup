output "resource_group_name" {

  description = "The name of the resource group"

  value = module.resource_group.name

}

output "storage_account_name" {

  description = "The name of the storage account"

  value = module.storage_account.name

}


output "virtual_network_id" {

  description = "The ID of the Virtual Network"

  value = module.virtual_network.vnet_id

}



output "log_analytics_id" {

  description = "The ID of the Log Analytics Workspace"

  value = module.log_analytics.workspace_id

}



output "key_vault_id" {

  description = "The ID of the Key Vault"

  value = module.key_vault.key_vault_id

}



output "aks_id" {

  description = "The ID of the AKS cluster"

  value = module.aks.aks_id

}