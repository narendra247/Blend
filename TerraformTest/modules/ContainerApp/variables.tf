variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for the Container App"
  type        = string
}

variable "container_app_env_id" {
  description = "ID of the Container App Environment"
  type        = string
}

variable "container_app_name" {
  description = "Name of the Container App"
  type        = string
}