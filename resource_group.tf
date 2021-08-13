resource "azurerm_resource_group" "marksrg" {
  name     = "RGP-${var.location_acronym}-${var.application_acronym}-${var.environment_acronym}"
  location = var.location
}