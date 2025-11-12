variable "nic_card" {
 type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_id           = string
    private_ip_address_allocation = optional(string)
 }))
  
}