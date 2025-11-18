terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "backendrg17"
    storage_account_name = "backendstg17"
    container_name       = "backendcontainer17"
    key                  = "dev.terraform.tfstate"
}

}

provider "azurerm" {
features {}
subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
}