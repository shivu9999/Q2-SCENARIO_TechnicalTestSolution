resource "azurerm_virtual_network" "testvnet" {
  name                       = var.corevnetname
  address_space              = [var.vnet_address_space]
  resource_group_name        = var.corevnetrg
  location                   = var.location
  #tags                       = var.tags
}

resource "azurerm_subnet" "subnet1" {
  name                       = var.subnet1
  address_prefixes           = [var.subnet_address_space1]
  virtual_network_name       = azurerm_virtual_network.corevnet.name
  resource_group_name        = azurerm_resource_group.corevnetrg.name
  service_endpoints          = ["Microsoft.Storage"]
}

resource "azurerm_subnet" "subnet2" {
  name                       = var.subnet2
  address_prefixes           = [var.subnet_address_space2]
  virtual_network_name       = azurerm_virtual_network.corevnet.name
  resource_group_name        = azurerm_virtual_network.corevnet.name
  service_endpoints          = ["Microsoft.Storage"]
}