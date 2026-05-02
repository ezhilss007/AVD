provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "avd" {
  name     = var.rg_name
  location = var.location
}
module "network" {
  source              = "./modules/network"
  rg_name             = azurerm_resource_group.avd.name
  location            = var.location
  vnet_name           = "avd-vnet"
  subnet_name         = "avd-subnet"
}
module "avd" {
  source              = "./modules/avd"
  rg_name             = azurerm_resource_group.avd.name
  location            = var.location
  hostpool_name       = "avd-hostpool"
}
module "compute" {
  source              = "./modules/compute"
  rg_name             = azurerm_resource_group.avd.name
  subnet_id           = module.network.subnet_id
  vm_count            = var.vm_count
}
