/*resource "azurerm_public_ip" "web_public_ip" {
  for_each = var.instance
  name                =  "${local.name_prefix}-${each.key}-public-ip" #gopal-public-ip
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  allocation_method   = "Static"
  sku                 = "Standard" #basic #premium
  tags                = local.project_tags
}
/*output "publicip" {
  value = azurerm_public_ip.web_public_ip.ip_address
}*/