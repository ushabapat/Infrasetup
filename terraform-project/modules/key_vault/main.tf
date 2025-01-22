resource "azurerm_key_vault" "key_vault" {

  name                        = var.name

  location                    = var.location

  resource_group_name         = var.resource_group_name

  sku_name                    = var.sku

  tenant_id                   = var.tenant_id

  #soft_delete_enabled         = true

}