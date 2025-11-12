data "azurerm_client_config" "kv" {}

resource "azurerm_key_vault" "kv1" {
 for_each                     = var.key_vaults   
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.kv.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.kv.tenant_id
    object_id = data.azurerm_client_config.kv.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
       "Restore",
       "Purge",
    
    ]

    storage_permissions = [
      "Get",
    ]
  }
}