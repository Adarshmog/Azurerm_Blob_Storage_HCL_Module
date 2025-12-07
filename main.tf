module "blob_container" {
  source = "./modules/blob_container"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  blob_container_name  = var.blob_container_name
  blob_container_name2 = var.blob_container_name2
  storage_account_name2 = var.storage_account_name2
    file_share_name      = var.file_share_name
}
