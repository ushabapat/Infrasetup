# Resource Group

variable "resource_group_name" {

  description = "Name of the resource group"

  type = string

}



variable "location" {

  description = "Azure region for the resources"

  type = string

}

# storage account


variable "storage_account_name" {

  description = "Name of the storage account"

  type = string

}



variable "storage_account_tier" {

  description = "Performance tier of the storage account"

  type = string

}



variable "storage_account_replication_type" {

  description = "Replication type of the storage account"

  type = string

}


# Virtual Network

variable "virtual_network_name" {

  description = "Name of the Virtual Network"

  type = string

}



variable "virtual_network_address_space" {

  description = "Address space for the Virtual Network"

  type = list(string)

}



variable "subnet_name" {

  description = "Name of the subnet"

  type = string

}



variable "subnet_address_prefixes" {

  description = "Address prefixes for the subnet"

  type = list(string)

}



# Log Analytics

variable "log_analytics_name" {

  description = "Name of the Log Analytics Workspace"

  type = string

}



variable "log_analytics_sku" {

  description = "SKU of the Log Analytics Workspace"

  type = string

}



variable "log_analytics_retention" {

  description = "Retention period in days for Log Analytics"

  type = number

}



# Key Vault

variable "key_vault_name" {

  description = "Name of the Key Vault"

  type = string

}



variable "key_vault_sku" {

  description = "SKU of the Key Vault"

  type = string

}



variable "tenant_id" {

  description = "Azure Tenant ID"

  type = string

}




# AKS

variable "aks_name" {

  description = "Name of the AKS cluster"

  type = string

}



variable "aks_dns_prefix" {

  description = "DNS prefix for the AKS cluster"

  type = string

}



variable "aks_node_pool_name" {

  description = "Name of the default node pool"

  type = string

}



variable "aks_vm_size" {

  description = "Size of the virtual machines in the AKS node pool"

  type = string

}



variable "aks_node_count" {

  description = "Number of nodes in the AKS node pool"

  type = number

}



variable "aks_network_plugin" {

  description = "Network plugin to use for networking"

  type = string

  default = "azure"

}



variable "aks_network_policy" {

  description = "Network policy to use for networking"

  type = string

  default = "calico"

}



variable "aks_service_cidr" {

  description = "The Network Range used by the Kubernetes service"

  type = string

}



variable "aks_dns_service_ip" {

  description = "An IP address assigned to the Kubernetes DNS service"

  type = string

}



variable "aks_docker_bridge_cidr" {

  description = "The CIDR notation IP range assigned to the Docker bridge network"

  type = string

}



variable "aks_enable_monitoring" {

  description = "Enable monitoring using Azure Log Analytics"

  type = bool

  default = false

}

variable "common_tags" {

  description = "A map of tags to add to the AKS cluster."

  type = map(string)

  default = {}

}