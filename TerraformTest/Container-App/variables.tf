variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "rg-blend-env"
}

variable "location" {
  description = "Region Name"
  type        = string
  default     = "uksouth"
}

variable "log_analytics_workspace_name" {
  description = "Name of the Workspace"
  type        = string
  default     = "log-analytics-container-app-env"
}

variable "container_app_env_name" {
  description = "Name of the Container App Environment"
  type        = string
  default     = "env-container-app"
}

variable "container_app_name" {
  description = "Name of the Container App"
  type        = string
  default     = "env-nginx"
}