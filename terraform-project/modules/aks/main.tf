resource "azurerm_kubernetes_cluster" "aks" {

  name                = var.name

  location            = var.location

  resource_group_name = var.resource_group_name

  dns_prefix          = var.dns_prefix



  default_node_pool {

    name       = var.node_pool_name

    vm_size    = var.vm_size

    node_count = var.node_count

  }



  identity {

    type = "SystemAssigned"

  }



  network_profile {

    network_plugin     = var.network_plugin

    network_policy     = var.network_policy

    service_cidr       = var.service_cidr

    dns_service_ip     = var.dns_service_ip

    docker_bridge_cidr = var.docker_bridge_cidr

  }


/*
  addon_profile {
   azure_policy {
        enabled = var.enable_azure_policy
}

    oms_agent {

      enabled                    = var.enable_monitoring

      log_analytics_workspace_id = var.log_analytics_workspace_id

    }

  } */

# Ensure atgs are applied
tags = var.tags
}