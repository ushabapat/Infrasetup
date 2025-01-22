variable "name" {

  description = "The name of the Virtual Network"

  type        = string

}



variable "location" {

  description = "The Azure region for the Virtual Network"

  type        = string

}



variable "resource_group_name" {

  description = "The name of the resource group"

  type        = string

}



variable "address_space" {

  description = "The address space for the Virtual Network"

  type        = list(string)

}



variable "subnet_name" {

  description = "The name of the subnet"

  type        = string

}



variable "subnet_address_prefixes" {

  description = "The address prefixes for the subnet"

  type        = list(string)

}