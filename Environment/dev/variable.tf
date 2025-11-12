variable "resource_groups" {
 type = map(object({
    name        = string
    location    = string
    tags        = map(string)
    managed_by  = optional(string)
 })) 
}

variable "public_ip" {
 type = map(object({
    name                 = string
    resource_group_name  = string
    location             = string
    tags                 = optional(map(string))
 })) 
}

variable "virtual_networks" {
 type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = map(object({
        name           = string
        address_prefixes = list(string)
    }))
   tags = optional(map(string)) 
 }))
}

variable "key_vaults" {
 type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    tenant_id          = string
    sku_name           = string
    tags = optional(map(string))
 }))
  
}

variable "nic_card" {
 type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_id           = string
    private_ip_address_allocation = optional(string)
 }))
  
}

variable "vms" {
    description = "A map of virtual machine configurations"
    type = map(object({
        vm_name                = string
        resource_group_name    = string
        location               = string
        vm_size                = string
        admin_username         = string
        admin_password         = string
         nic_name               = string
         disable_password_authentication = bool 
        source_image_reference = object({
        publisher = string
        offer     = string
        sku       = string
        version   = string
        })
    }))
  
}