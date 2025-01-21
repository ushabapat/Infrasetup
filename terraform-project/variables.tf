variable "location" {

  description = "Azure region for resource deployment."

  type = string

  default = "eastus"

}



variable "resource_group_name" {

  description = "Name of the Resource Group."

  type = string

  default = "rg-aks-resources"

}



variable "vnet_name" {

  description = "Name of the Virtual Network."

  type = string

  default = "vnet-aks"

}



variable "address_space" {

  description = "Address space for the Virtual Network."

  type = list(string)

  default = ["10.0.0.0/16"]

}



variable "subnet_name" {

  description = "Name of the AKS Subnet."

  type = string

  default = "snet-aks"

}



variable "subnet_prefix" {

  description = "Address prefix for the AKS Subnet."

  type = string

  default = "10.0.1.0/24"

}



variable "storage_account_name" {

  description = "Name of the Storage Account."

  type = string

  default = "staksstorageacct"

}



variable "log_analytics_workspace_name" {

  description = "Name of the Log Analytics Workspace."

  type = string

  default = "law-aks"

}



variable "aks_cluster_name" {

  description = "Name of the AKS Cluster."

  type = string

  default = "aks-cluster"

}

variable "ssh_public_key_path" {

  description = "SSH public key for AKS node authentication."

  type = string

}


