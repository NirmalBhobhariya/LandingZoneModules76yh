# variable "ResourceName" {
#   type = string
# }
# variable "Location" {
#   type = string
# }
# variable "storage_account_name" {
#   type = string
# }
# variable "resource_group_name" {
#   type = string
# }
# variable "location" {
#   type = string
# }
# variable "account_tier" {
#   type = string
# }
# variable "account_replication_type" {
#   type = string
# }

variable "ResourceInfo" {
  type = map(object({
    ResourceName             = string
    Location                 = string
    storage_account_name     = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
}