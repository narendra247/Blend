module "resource_group" {
  source   = "./modules/ResourceGroup"
  name     = var.resource_group_name
  location = var.location
}

module "log_analytics" {
  source              = "./modules/LogWorkspace"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  workspace_name      = var.log_analytics_workspace_name
}

module "container_app_env" {
  source                    = "./modules/ContainerAppEnv"
  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
  container_app_env_name    = var.container_app_env_name
  log_analytics_workspace_id = module.log_analytics.workspace_id
}

module "container_app" {
  source                    = "./modules/ContainerApp"
  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
  container_app_env_id      = module.container_app_env.environment_id
  container_app_name        = var.container_app_name
}