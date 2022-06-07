## Managed By : CloudDrove
## Copyright @ CloudDrove. All Right Reserved.
#Module      : labels
#Description : Terraform module to create consistent naming for multiple names.
module "labels" {
  source  = "clouddrove/labels/azure"
  version = "1.0.0"
  name          = var.name
  environment   = var.environment
  managedby     = var.managedby
  business_unit = var.business_unit
  label_order   = var.label_order
  repository    = var.repository
}

#Module      : RESOURCE GROUP
#Description : Terraform resource for resource group.
resource "azurerm_resource_group" "default" {
  count    = var.enabled ? 1 : 0
  name     = format("%s-%s-azurerm_resource_group", var.name, var.environment)
  location = var.location
  tags     = module.labels.tags
  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }
}

resource "azurerm_management_lock" "default" {
  count      = var.enabled ? 1 : 0
  name       = format("%s-%s-azurerm_management_lock", var.name, var.environment)
  scope      = join("", azurerm_resource_group.default.*.id)
  lock_level = var.lock_level
  notes      = var.lock_notes
  
}