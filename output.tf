output "resource_group_name" {
  value = var.rg_name
}
output "hostpool_name" {
  value = module.avd.hostpool_name
}
output "workspace_id" {
  value = module.avd.workspace_id
}
output "subnet_id" {
  value = module.network.subnet_id
}
output "vm_names" {
  value = module.compute.vm_names
}
output "vm_private_ips" {
  value = module.compute.vm_private_ips
}
