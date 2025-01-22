output "aks_id" {

  description = "The ID of the AKS"

  value       = azurerm_kubernetes_cluster.aks.id

}


output "kube_config" {

  description = "The Kubernetes configuration."

  value       = azurerm_kubernetes_cluster.aks.kube_config_raw

}



output "kube_admin_config" {

  description = "The Kubernetes admin configuration."

  value       = azurerm_kubernetes_cluster.aks.kube_admin_config_raw

}



output "node_resource_group" {

  description = "The auto-generated Resource Group which contains the resources for the AKS Node Pool."

  value       = azurerm_kubernetes_cluster.aks.node_resource_group

}