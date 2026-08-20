 terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0" #always provide the proiver version to avoid breaking changes in the future
    }
  }
  backend "azurerm" {
    resource_group_name = "morusu-storage"
    storage_account_name = "morsustorage"
    container_name = "tfstate" #if you have given any other container name change it
    key = "morususky-project.tfstate" #inside the container the state file will be created with this name
  }
  
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

