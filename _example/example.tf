provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  environment = "tested"
  label_order = ["name", "environment", ]

  name     = "example"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level = "CanNotDelete"
}
