terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "fpost-storage" {
  source = "../../tf-modules/fpost-storage"

  location                 = var.location
  resource_group_name      = var.resource_group_name
  storage_account_name     = var.storage_account_name
  container_name           = var.container_name
  tags                     = var.tags
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  container_access_type    = var.container_access_type
}