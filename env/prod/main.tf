resource "azurerm_resource_group" "rg" {
  name     = "${var.client_name}-${var.environment}-rg"
  location = var.location
}

module "storage" {
  source = "C:/Devopsinsider/terraform/terraform-modules/storage" # ✅ tera correct path

  storage_name        = var.storage_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location

  client_name = var.client_name
  environment = var.environment
}