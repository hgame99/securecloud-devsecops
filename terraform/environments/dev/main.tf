terraform {
  required_version = ">= 1.16.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "securecloud" {
  name     = "rg-securecloud-dev"
  location = "eastus2"

  tags = {
    project     = "SecureCloud"
    environment = "development"
    managed_by  = "terraform"
  }
}
