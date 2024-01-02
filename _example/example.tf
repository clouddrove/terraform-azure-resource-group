provider "azurerm" {
  features {}
}

module "resource_group" {
  source      = "../"
  name        = "example"
  environment = "test"
  location    = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}
