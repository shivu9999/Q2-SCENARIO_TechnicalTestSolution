resource "azurerm_network_security_group" "networkgroup" {
  name                = "networksecgroup"
  location            = azurerm_resource_group.corevnetrg.location
  resource_group_name = azurerm_resource_group.corevnetrg.name

  #tags                = var.tags

}