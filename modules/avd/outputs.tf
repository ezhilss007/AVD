output "hostpool_name" {
  description = "AVD host pool name"
  value       = azurerm_virtual_desktop_host_pool.hostpool.name
}

output "workspace_id" {
  description = "AVD workspace resource ID"
  value       = azurerm_virtual_desktop_workspace.workspace.id
}

output "hostpool_id" {
  description = "AVD host pool resource ID"
  value       = azurerm_virtual_desktop_host_pool.hostpool.id
}
