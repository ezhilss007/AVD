variable "rg_name" {
  description = "Resource group name for compute resources"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for session host VM network interfaces"
  type        = string
}

variable "vm_count" {
  description = "Number of session host VMs"
  type        = number
  default     = 2
}

variable "location" {
  description = "Azure region for compute resources"
  type        = string
}

variable "admin_username" {
  description = "Administrator user for session host VMs"
  type        = string
}

variable "admin_password" {
  description = "Administrator password for session host VMs"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "VM size for AVD session hosts"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "vm_name_prefix" {
  description = "Prefix for session host VM names"
  type        = string
  default     = "avd-sessionhost"
}
