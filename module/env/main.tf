# Resource Group -> this could be used for each environment to keep everything for that environment in one place
# This is not used in this example as we are using the existing resource group
#resource "azurerm_resource_group" "rg" {
#  name     = "${var.env_name}-rg"
#  location = var.location
#}

# App Service Plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "${var.env_name}-asp"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

# App 1
module "WebPortal" {
  source              = "../app"
  app_name            = "WebPortal"
  username            = var.username
  env_name            = var.env_name
  repo_url            = var.website_url
  branch              = var.branch_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.appserviceplan.id
}

# App 2
module "Storm" {
  source              = "../app"
  app_name            = "Storm"
  username            = var.username
  env_name            = var.env_name
  repo_url            = var.storm_url
  branch              = var.branch_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  service_plan_id     = azurerm_service_plan.appserviceplan.id
}
