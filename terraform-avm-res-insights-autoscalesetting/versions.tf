terraform {
  required_version = ">= 1.4.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.116, < 5"
    }

    azapi = {
      source  = "azure/azapi"
      # keep away from known-bad release 1.13.0
      version = \">= 1.13, != 1.13.0, < 2"
    }

    modtm = {
      source  = "azure/modtm"
      version = "~> 0.3"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
