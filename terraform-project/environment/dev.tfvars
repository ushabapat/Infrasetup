# Resource Group

resource_group_name = "dev-resource-group"

location            = "East US"

# storage account

storage_account_name              = "devstorageaccttest"

storage_account_tier              = "Standard"

storage_account_replication_type  = "LRS"


# Virtual Network

virtual_network_name       = "dev-vnet"

virtual_network_address_space = ["10.0.0.0/16"]

subnet_name                = "dev-subnet"

subnet_address_prefixes    = ["10.0.1.0/24"]



# Log Analytics

log_analytics_name        = "dev-log-analytics"

log_analytics_sku         = "PerGB2018"

log_analytics_retention   = 30



# Key Vault

key_vault_name = "dev-keyvault-usha"

key_vault_sku  = "standard"

tenant_id      = "5b973f99-77df-4beb-b27d-aa0c70b8482c"



# AKS

# AKS Configuration

aks_name               = "dev-aks-cluster-usha"

aks_dns_prefix         = "dev-aks"

aks_node_pool_name     = "default"

aks_vm_size            = "Standard_DS2_v2"

aks_node_count         = 2

aks_network_plugin     = "azure"

aks_network_policy     = "calico"

aks_service_cidr       = "10.0.0.0/16"

aks_dns_service_ip     = "10.0.0.10"

aks_docker_bridge_cidr = "172.17.0.1/16"

aks_enable_monitoring  = true

common_tags = {
Environment = "dev"
Project = "my-project"
Owner = "testuser"
}
