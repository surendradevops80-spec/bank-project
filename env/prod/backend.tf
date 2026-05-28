terraform {
  backend "azurerm" {
    resource_group_name  = "bank-tfstate-rg"
    storage_account_name = "banktfstatesk12" # 🔥 correct name
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
}