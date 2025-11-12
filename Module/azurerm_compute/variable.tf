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