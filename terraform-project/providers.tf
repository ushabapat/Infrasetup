terraform {

  required_providers {

    azurerm = {

      source = "hashicorp/azurerm"

      version = "~>3.80.0"

    }

  }
  /*
  backend "azurerm" {
    resource_group_name   = "tfstate_rg"
    storage_account_name  = "var.storage_account_name"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
*/
}



provider "azurerm" {

  features {}
  skip_provider_registration = true
}