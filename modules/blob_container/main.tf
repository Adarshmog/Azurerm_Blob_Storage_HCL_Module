resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_storage_account" "storage_account" {
    name = var.storage_account_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}
    
    resource "azurerm_storage_account" "storage_account2" {
    name = var.storage_account_name2
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    }

    resource "azurerm_storage_share" "file_share" {
    name = var.file_share_name
    storage_account_id = azurerm_storage_account.storage_account2.id
    quota = 50
    }


    resource "azurerm_storage_container" "blob_container" {
    name = var.blob_container_name
    storage_account_id = azurerm_storage_account.storage_account.id
    container_access_type = "private"
    }

    resource "azurerm_storage_container" "blob_container2" {
    name = var.blob_container_name2
    storage_account_id = azurerm_storage_account.storage_account.id
    container_access_type = "private"
    }