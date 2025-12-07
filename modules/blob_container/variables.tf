variable "resource_group_name" {
    description = "The name of the resource group in which to create the storage account."
    type        = string
}
variable "location" {
    description = "The Azure region where the resource group and storage account will be created."
    type        = string
}
variable "storage_account_name" {
    description = "The name of the storage account to be created."
    type        = string
}
variable "blob_container_name" {
    description = "The name of the blob container to be created within the storage account."
    type        = string
}
variable "blob_container_name2" {
  description = "The name of the terraform container"
  type        = string
}

variable "storage_account_name2" {
  description = "The name of the second storage account to be created."
  type        = string
  }
variable "file_share_name" {
  description = "The name of the file share to be created within the second storage account."
  type        = string
}