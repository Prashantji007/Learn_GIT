resource "azurerm_resource_group" "RG" {
  name = "${prefix}-rg"
  location = "westus"
}