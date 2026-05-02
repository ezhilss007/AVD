output "subnet_id" {
  description = "ID of the AVD subnet"
  value       = azurerm_subnet.avd_subnet.id
}
