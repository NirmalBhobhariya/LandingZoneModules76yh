module "ResourceGroup" {
  source       = "../../Modules/ResourceGroup"
  for_each     = var.ResourceInfo
  resourceName = each.value.ResourceName
  location     = each.value.Location
}
module "storage_account" {
  source                   = "../../Modules/StorageAccount"
  depends_on               = [module.ResourceGroup]
  for_each                 = var.ResourceInfo
  storage_account_name     = each.value.storage_account_name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.Location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}