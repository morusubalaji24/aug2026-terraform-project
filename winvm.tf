/*resource "azurerm_windows_virtual_machine" "myvm" {
  name                = "morusu-win-vm"
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  size                = "Standard_B2s"

  admin_username = "morusubalaji"
  admin_password = data.azurerm_key_vault_secret.mysecret.value

  network_interface_ids = [
    azurerm_network_interface.web_nic.id #change this with your nic card
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "microsoftwindowsdesktop"
    offer     = "windows-11"
    sku       = "win11-25h2-pro"
    version   = "latest"
  }
}*/