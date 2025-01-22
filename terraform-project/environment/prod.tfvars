# Resource Group

resource_group_name = "prod-resource-group"

location            = "West US"

# storage account

storage_account_name              = "prodstorageacct"

storage_account_tier              = "Premium"

storage_account_replication_type  = "GRS"


# Virtual Network

virtual_network_name       = "prod-vnet"

virtual_network_address_space = ["10.1.0.0/16"]

subnet_name                = "prod-subnet"

subnet_address_prefixes    = ["10.1.1.0/24"]



# Log Analytics

log_analytics_name        = "prod-log-analytics"

log_analytics_sku         = "PerGB2018"

log_analytics_retention   = 90



# Key Vault

key_vault_name = "prod-keyvault"

key_vault_sku  = "premium"

tenant_id      = "<your-tenant-id>"



# AKS

# AKS Configuration

aks_name               = "prod-aks-cluster"

aks_dns_prefix         = "prod-aks"

aks_node_pool_name     = "default"

aks_vm_size            = "Standard_DS2_v2"

aks_node_count         = 2

aks_network_plugin     = "azure"

aks_network_policy     = "calico"

aks_service_cidr       = "10.0.0.0/16"

aks_dns_service_ip     = "10.0.0.10"

aks_docker_bridge_cidr = "172.17.0.1/16"

aks_enable_monitoring  = true