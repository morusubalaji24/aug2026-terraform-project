resource "azurerm_virtual_network" "vnet" {
  name                = "${local.name_prefix}-${var.vnet_name}" #gopal-network
  location            = azurerm_resource_group.myrg.location    #it will read your stae file and get the location of resource group
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = var.address_space
  tags                = local.project_tags

}
