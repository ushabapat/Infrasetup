variable "name" {

  description = "The name of the Log Analytics Workspace"

  type        = string

}



variable "location" {

  description = "The Azure region for the Log Analytics Workspace"

  type        = string

}



variable "resource_group_name" {

  description = "The name of the resource group"

  type        = string

}



variable "sku" {

  description = "The SKU of the Log Analytics Workspace"

  type        = string

}



variable "retention_in_days" {

  description = "The retention period in days"

  type        = number

}

