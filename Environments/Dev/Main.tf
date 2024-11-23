module "rg" {
  source = "../../Modules/Azure_Resource_Group"
}

locals {
  location = "delhi"
  Rule = "Pushpa 2"
  Rule3 = "tree"
  Rule1 = "Pushpa 3"
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "veerv"
  location            = "centralindia"
  resource_group_name = "${var.prefix}-rg"
  size                = "Standard_B2s"
  admin_username      = "admin"
  admin_password      = "Test@123"
  disable_password_authentication = false
  network_interface_ids = ""

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  tags = "Dev"
}
resource "azurerm_storage_account" "sa" {
  name                     = "sa1"
  location                 = "westus"
  account_replication_type = "GRS"
  account_tier             = "Standard"
  resource_group_name      = "rg"
}
