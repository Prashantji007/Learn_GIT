resource "azurerm_resource_group" "RG" {
  name = "${prefix}-rg"
  location = "westus"
}

resource "azurerm_resource_group" "RG1" {
  name = "${prefix}-rg"
  location = "centralindia"
}