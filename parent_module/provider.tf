provider "azurerm" {
  # Configuration options
  subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
  features {}
}
# Terraform Block hai jo Microsoft Azure cloud ka use kar raha hai
terraform { 
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pavithra"
    storage_account_name = "pavithra09082025" 
    container_name       = "pavithra"
    key                  = "vicky.tfstate"
  }
}