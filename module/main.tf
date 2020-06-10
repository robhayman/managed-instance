
resource "azurerm_resource_group" "rg_managed_instance" {
  name     = local.resource_groups.managed_instance.name
  location = local.resource_groups.managed_instance.location
}

locals {
  resource_groups         = {
    managed_instance         = {
      name                = var.resource_group_name
      location            = var.location
    }
  }
}
