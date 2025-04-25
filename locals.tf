locals {
  resource_group_name     = data.azurerm_resource_group.existing.name
  resource_group_location = data.azurerm_resource_group.existing.location
  username                = "areeb"
}