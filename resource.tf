resource "azurerm_resource_group" "myrg" { #what is the purpose of this refrence block? user defined field
  name = "${local.name_prefix}-${var.resource_group_name}"
  #sap-dev-gopal-rg #it will read the local block and get the value of name_prefix
  location = var.location
  tags     = local.project_tags
  #when we call the local block we use local.<name of the local block>.<key name>
}

