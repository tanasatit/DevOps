# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.14.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  skip_provider_registration = true
}
