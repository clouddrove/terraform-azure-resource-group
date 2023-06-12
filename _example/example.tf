provider "azurerm" {
  features {}
}

##----------------------------------------------------------------------------- 
## Resource group module call.  
##-----------------------------------------------------------------------------
module "resource_group" {
  source = "../"
  environment = "test"
  label_order = ["name", "environment", ]
  name     = "example"
  location = "North Europe"
  ##----------------------------------------------------------------------------- 
  ## Azure Management lock resource set to true to lock resource group. 
  ##-----------------------------------------------------------------------------
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}
