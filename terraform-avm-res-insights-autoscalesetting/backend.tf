terraform {
  backend "azurerm" {
    resource_group_name  = "<your-tfstate-rg>"
    storage_account_name = "<yourtfstateacct>"
    container_name       = "tfstate"
    key                  = "autoscalesetting/terraform.tfstate"
  }
}
