provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "avd" {
  name     = var.rg_name
  location = var.location
}
module "network" {
  source      = "./modules/network"
  rg_name     = azurerm_resource_group.avd.name
  location    = var.location
  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
}
module "avd" {
  source         = "./modules/avd"
  rg_name        = azurerm_resource_group.avd.name
  location       = var.location
  hostpool_name  = var.hostpool_name
  workspace_name = var.workspace_name
}
module "compute" {
  source         = "./modules/compute"
  rg_name        = azurerm_resource_group.avd.name
  subnet_id      = module.network.subnet_id
  vm_count       = var.vm_count
  location       = var.location
  admin_username = var.admin_username
  admin_password = var.admin_password
  vm_size        = var.vm_size
}
