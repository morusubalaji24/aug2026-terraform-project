resource "azurerm_network_interface" "web_nic" {
  for_each = var.instance
  name                = "${local.name_prefix}-${each.key}-nic"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.morusu-subnet.id
    private_ip_address_allocation = "Dynamic"
   # public_ip_address_id          = azurerm_public_ip.web_public_ip[each.key].id
  }
}