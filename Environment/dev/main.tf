module "resource_group" {
source = "../../Module/azurerm_resource_group"
resource_groups = var.resource_groups    
  
}

# module "public_ip" {
#   source = "../../Module/azurerm_public_ip"
#     public_ip = var.public_ip
# }
# module "virtual_networks" {
# source = "../../Module/azurerm_networking"
#  virtual_networks = var.virtual_networks
#  depends_on = [ module.resource_group ]
# }
# module "key_vault" {
# source = "../../Module/azurerm_key_vault"
#  key_vaults  = var.key_vaults 
#  depends_on = [ module.resource_group ]
# }
# module "nic_card" {
# source = "../../Module/azurerm_nic_card"
#  nic_card = var.nic_card 
#  depends_on = [ module.virtual_networks, module.public_ip ]
# }

# module "azurerm_vms" {
# source = "../../Module/azurerm_compute"
#  vms = var.vms 
#  depends_on = [ module.public_ip ,module.resource_group, module.virtual_networks, module.key_vault ]
# }

# module "azurerm_storage_account" {
# source = "../../Module/azurerm_storage_account"
#  storage_accounts = var.storage_accounts 
#  depends_on = [ module.resource_group ]
# }