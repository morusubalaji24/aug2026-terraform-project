
# vnet name and resource group 
resource "azurerm_subnet" "morusu-subnet" {
  name                 = "${local.name_prefix}-${var.subnet_name}" #websubnet-subnet
  resource_group_name  = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]


}