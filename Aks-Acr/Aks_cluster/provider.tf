terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "action_rg"
    storage_account_name = "actionstorage0033"
    container_name = "actionblob001"
    key = "action.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
  subscription_id = "75330da7-9d4b-4fbe-bb6f-8c4125ece9a6"
}
