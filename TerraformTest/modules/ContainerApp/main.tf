resource "azurerm_container_app" "app" {
  name                         = var.container_app_name
  container_app_environment_id = var.container_app_env_id
  resource_group_name          = var.resource_group_name
  location                     = var.location

  template {
    container {
      name   = "nginx"
      image  = "nginx:latest"
      cpu    = 0.25
      memory = "0.5Gi"
    }
  }

  ingress {
    external_enabled = true
    target_port      = 80
    traffic_weight {
      percentage = 100
      latest_revision = true
    }
  }
}