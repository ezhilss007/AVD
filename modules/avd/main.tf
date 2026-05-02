resource "azurerm_virtual_desktop_host_pool" "hostpool" {
  name                = var.hostpool_name
  resource_group_name = var.rg_name
  location            = var.location
  friendly_name       = var.hostpool_name
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
}

resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace_name
  resource_group_name = var.rg_name
  location            = var.location
  friendly_name       = var.workspace_name
}

resource "azurerm_virtual_desktop_application_group" "desktop" {
  name                = "${var.hostpool_name}-ag"
  resource_group_name = var.rg_name
  location            = var.location
  host_pool_id        = azurerm_virtual_desktop_host_pool.hostpool.id
  type                = "Desktop"
  friendly_name       = "${var.hostpool_name} Application Group"
}

resource "azurerm_virtual_desktop_workspace_application_group_association" "association" {
  workspace_id          = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id  = azurerm_virtual_desktop_application_group.desktop.id
}
