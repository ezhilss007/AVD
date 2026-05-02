variable "rg_name" {
  description = "Resource group name for AVD resources"
  type        = string
}

variable "location" {
  description = "Azure region for AVD resources"
  type        = string
}

variable "hostpool_name" {
  description = "AVD host pool name"
  type        = string
}

variable "workspace_name" {
  description = "AVD workspace name"
  type        = string
  default     = "avd-workspace"
}
