##-----------------------------------------------------------------------------
## Labels module callled that will be used for naming and tags.
##-----------------------------------------------------------------------------
module "labels" {
  source  = "clouddrove/labels/azure"
  version = "1.0.0"

  name          = var.name
  environment   = var.environment
  managedby     = var.managedby
  business_unit = var.business_unit
  label_order   = var.label_order
  repository    = var.repository
  extra_tags = var.extra_tags
}

##-----------------------------------------------------------------------------
## Terraform resource for resource group.
## Azure automatically deletes any Resources nested within the Resource Group when a Resource Group is deleted.
##-----------------------------------------------------------------------------
resource "azurerm_resource_group" "default" {
  count    = var.enabled ? 1 : 0
  name     = format("%s-resource-group", module.labels.id)
  location = var.location
  tags     = module.labels.tags

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }
}

##-----------------------------------------------------------------------------
## Manages a Management Lock which is scoped to a Subscription, Resource Group or Resource.
##-----------------------------------------------------------------------------
resource "azurerm_management_lock" "resource-group-level" {
  count      = var.enabled && var.resource_lock_enabled ? 1 : 0
  name       = format("%s-rg-lock", var.lock_level)
  scope      = azurerm_resource_group.default[0].id
  lock_level = var.lock_level
  notes      = var.notes
}
