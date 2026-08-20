data "azurerm_key_vault" "mywinvault" {
  name                = "morusu-winvm-vault" #replace this with your vault name
  resource_group_name = "morusu-vault"       #repalce this with your vault resouorce group
}

#lets check it is reading the vault or not
output "key_vault_id" {
  value = data.azurerm_key_vault.mywinvault

}

data "azurerm_key_vault_secret" "mysecret" {
  name         = "morusu-vaultsecret" #change it with your secret name
  key_vault_id = data.azurerm_key_vault.mywinvault.id
}