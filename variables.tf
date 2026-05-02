variable "rg_name" {
  description = "Resource Group name"
  type        = string
}
variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}
variable "vm_count" {
  description = "Number of session host VMs"
  type        = number
  default     = 2
}
variable "admin_username" {
  description = "Admin username for VM"
  type        = string
  default     = "azureuser"
}
variable "admin_password" {
  description = "Admin password for VM"
  type        = string
  sensitive   = true
}
# AVD-specific
variable "hostpool_name" {
  description = "AVD Host Pool name"
  type        = string
}
variable "workspace_name" {
  description = "AVD Workspace name"
  type        = string
}
# Network
variable "vnet_name" {
  type        = string
  default     = "avd-vnet"
}
variable "subnet_name" {
  type        = string
  default     = "avd-subnet"
}
