resource "azurerm_network_interface" "session_host" {
  count               = var.vm_count
  name                = "${var.vm_name_prefix}-${count.index + 1}-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "session_host" {
  count               = var.vm_count
  name                = "${var.vm_name_prefix}-${count.index + 1}"
  resource_group_name = var.rg_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [azurerm_network_interface.session_host[count.index].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-10"
    sku       = "21h2-evd"
    version   = "latest"
  }
}
