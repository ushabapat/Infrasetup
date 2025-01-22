# Resource Group Module

module "resource_group" {

  source = "./modules/resource_group"

  name = var.resource_group_name

  location = var.location

}


# Storage Account Module

module "storage_account" {

  source = "./modules/storage_account"

  name = var.storage_account_name

  resource_group_name = module.resource_group.name

  location = module.resource_group.location

  account_tier = var.storage_account_tier

  account_replication_type = var.storage_account_replication_type

}


# Virtual Network Module

module "virtual_network" {

  source = "./modules/virtual_network"

  name = var.virtual_network_name

  location = var.location

  resource_group_name = module.resource_group.name

  address_space = var.virtual_network_address_space

  subnet_name = var.subnet_name

  subnet_address_prefixes = var.subnet_address_prefixes

}



# Log Analytics Module

module "log_analytics" {

  source = "./modules/log_analytics"

  name = var.log_analytics_name

  location = var.location

  resource_group_name = module.resource_group.name

  sku = var.log_analytics_sku

  retention_in_days = var.log_analytics_retention

}



# Key Vault Module

module "key_vault" {

  source = "./modules/key_vault"

  name = var.key_vault_name

  location = var.location

  resource_group_name = module.resource_group.name

  sku = var.key_vault_sku

  tenant_id = var.tenant_id

}



# AKS Module

module "aks" {

  source = "./modules/aks"

  name = var.aks_name

  location = var.location

  resource_group_name = module.resource_group.name

  dns_prefix = var.aks_dns_prefix

  node_pool_name = var.aks_node_pool_name

  vm_size = var.aks_vm_size

  node_count = var.aks_node_count

  network_plugin = var.aks_network_plugin

  network_policy = var.aks_network_policy

  service_cidr = var.aks_service_cidr

  dns_service_ip = var.aks_dns_service_ip

  docker_bridge_cidr = var.aks_docker_bridge_cidr

  enable_monitoring = var.aks_enable_monitoring

  log_analytics_workspace_id = module.log_analytics.workspace_id

  tags = var.common_tags

}