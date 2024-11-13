resource "azurerm_resource_group" "RG" {
  name = "${prefix}-rg"
  location = "westus"
}

resource "azurerm_storage_account" "sa" {
  name                     = "sa1"
  location                 = "westus"
  account_replication_type = "GRS"
  account_tier             = "Standard"
  resource_group_name      = "rg"
}
