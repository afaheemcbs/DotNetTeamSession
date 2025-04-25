
#region Environments
module "DevEnvironment" {
  source                  = "./module/env"
  env_name                = "dev"
  location                = "eastus"
  os_type                 = "Linux"
  sku_name                = "B1"
  resource_group_name     = local.resource_group_name
  resource_group_location = local.resource_group_location
  website_url             = "https://github.com/AlexGuyNichols/nodejs-docs-hello-world.git"
  storm_url               = "https://github.com/AlexGuyNichols/nodejs-docs-hello-world.git"
  branch_name             = "main"
  username                = local.username
}

#endregion
