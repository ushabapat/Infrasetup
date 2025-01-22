variable "name" {

  description = "The name of the AKS cluster."

  type        = string

}



variable "location" {

  description = "The Azure region where the AKS cluster will be deployed."

  type        = string

}



variable "resource_group_name" {

  description = "The name of the resource group containing the AKS cluster."

  type        = string

}



variable "dns_prefix" {

  description = "DNS prefix specified when creating the managed cluster."

  type        = string

}



variable "node_pool_name" {

  description = "The name of the default node pool."

  type        = string

}



variable "vm_size" {

  description = "The size of the Virtual Machine for the node pool."

  type        = string

}



variable "node_count" {

  description = "The number of nodes in the default node pool."

  type        = number

}



variable "network_plugin" {

  description = "Network plugin to use for networking."

  type        = string

  default     = "azure"

}



variable "network_policy" {

  description = "Network policy to use for networking."

  type        = string

  default     = "calico"

}



variable "service_cidr" {

  description = "The Network Range used by the Kubernetes service."

  type        = string

}



variable "dns_service_ip" {

  description = "An IP address assigned to the Kubernetes DNS service."

  type        = string

}



variable "docker_bridge_cidr" {

  description = "The CIDR notation IP range assigned to the Docker bridge network."

  type        = string

}



variable "enable_monitoring" {

  description = "Enable monitoring using Azure Log Analytics."

  type        = bool

  default     = false

}



variable "log_analytics_workspace_id" {

  description = "The ID of the Log Analytics Workspace."

  type        = string

  default     = ""

}


variable "enable_azure_policy" {

  description = "Enable Addon policy"

  type        = bool

  default     = false
}

variable "tags" {

  description = "A map of tags to add to the AKS cluster."

  type        = map(string)

  default     = {}

}

