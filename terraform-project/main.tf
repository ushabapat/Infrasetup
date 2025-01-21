module "resource_group" {

  source = "./modules/resource_group"

  resource_group_name = var.resource_group_name

  location = var.location

}



module "virtual_network" {

  source = "./modules/virtual_network"

  vnet_name = var.vnet_name

  address_space = var.address_space

  subnet_name = var.subnet_name

  subnet_prefix = var.subnet_prefix

  resource_group_name = var.resource_group_name

  location = var.location

}



module "storage_account" {

  source = "./modules/storage_account"

  storage_account_name = var.storage_account_name

  resource_group_name = var.resource_group_name

  location = var.location

}



module "log_analytics" {

  source = "./modules/log_analytics"

  log_analytics_workspace_name = var.log_analytics_workspace_name

  resource_group_name = var.resource_group_name

  location = var.location

}



module "aks" {

  source = "./modules/aks"

  aks_cluster_name = var.aks_cluster_name

  resource_group_name = var.resource_group_name

  location = var.location

  subnet_id                  = module.virtual_network.subnet_id
  vnet_name                  = module.virtual_network.vnet_name
  subnet_name                = module.virtual_network.subnet_name
  log_analytics_workspace_id = module.log_analytics.workspace_id
  ssh_public_key_path        = var.ssh_public_key_path

}


