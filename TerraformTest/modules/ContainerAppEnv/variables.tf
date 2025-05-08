variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "region for the Container App Environment"
  type        = string
}

variable "container_app_env_name" {
  description = "Name of the Container App Environment"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics Workspace"
  type        = string
}