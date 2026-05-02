output "vm_names" {
  description = "Names of the AVD session host VMs"
  value       = azurerm_windows_virtual_machine.session_host[*].name
}

output "vm_private_ips" {
  description = "Private IP addresses assigned to the session hosts"
  value       = azurerm_network_interface.session_host[*].private_ip_address
}
