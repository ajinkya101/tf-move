# Configure the Microsoft Azure Provider
provider "azurerm" {
  # skip_provider_registration = true
  features {}
}

module "rg1" {
  source     = "./modules/rg"
  az_rg_name = "testrg1"
  tags = {
    "env"    = "dev",
    "region" = "eastus"
  }
}

module "vnet1" {
  source             = "./modules/vnet"
  rg_name            = module.rg1.rg_name
  vnet_name          = "dev-vnet"
  vnet_address_space = ["10.0.0.0/16"]
  subnets = {
    dev-subnet = {
      subnet_name           = "dev-subnet"
      subnet_address_prefix = ["10.0.0.0/24"]
    }
  }
  tags = {
    "env"    = "dev",
    "region" = "eastus"
  }
}