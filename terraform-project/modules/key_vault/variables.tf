variable "name" {

  description = "The name of the Key Vault"

  type        = string

}



variable "location" {

  description = "The Azure region for the Key Vault"

  type        = string

}



variable "resource_group_name" {

  description = "The name of the resource group"

  type        = string

}



variable "sku" {

  description = "The SKU of the Key Vault"

  type        = string

}



variable "tenant_id" {

  description = "The Azure Tenant ID"

  type        = string

}