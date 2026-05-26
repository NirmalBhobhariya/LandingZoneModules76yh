module "ResourceGroup" {
  source       = "../../Modules/ResourceGroup"
  resourceName = var.ResourceName
  location     = var.Location
}