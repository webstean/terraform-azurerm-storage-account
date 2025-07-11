## work out some basic variables

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

data "azuread_group" "this" {
  id = var.entra_group_id
}
data "azuread_service_principal" "entra_group_id" {
  display_name = azuread_group.this.display_name
}

/*
data "azurerm_subnet" "private" {
  name                 = var.private_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}
*/

