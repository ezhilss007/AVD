variable "rg_name" {
  description = "Resource group name for network resources"
  type        = string
}

variable "location" {
  description = "Azure region for network resources"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "avd-vnet"
}

variable "subnet_name" {
  description = "Subnet name for AVD session hosts"
  type        = string
  default     = "avd-subnet"
}
