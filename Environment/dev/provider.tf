terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""
}

}


provider "azurerm" {
features {}
subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
}