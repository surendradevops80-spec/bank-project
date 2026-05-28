terraform {
  backend "azurerm" {
    resource_group_name  = "bank-tfstate-rg"
    storage_account_name = "banktfstatesk12"   # ✅ exact match
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}