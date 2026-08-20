/*resource "azurerm_virtual_machine_extension" "powershell" {
  name                 = "windows-configuration"
  virtual_machine_id   = azurerm_windows_virtual_machine.myvm.id

  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.10"

  settings = jsonencode({
    fileUris = [
      "https://raw.githubusercontent.com/gopal1409/kyn-august-26-terraform/refs/heads/main/install.ps1"
    ]

    commandToExecute = "powershell.exe -ExecutionPolicy Unrestricted -File install.ps1"
  })
}*/