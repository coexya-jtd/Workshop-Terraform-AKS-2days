
# lectures utiles : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
#                   https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container


resource "azurerm_storage_account" "Terra-Storage-Backend" {
  name                      = var.storageAccountBackendTerraform
  resource_group_name       = azurerm_resource_group.Terra_tfbackend_rg.name
  location                  = azurerm_resource_group.Terra_tfbackend_rg.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  account_kind              = "StorageV2"
  enable_https_traffic_only = true

  tags = {
        Environment = "JTD-K8S",
        Client      = "Coexya DIA",
        Responsable = "AML"
    }
}


resource "azurerm_storage_container" "Terra-Container-Storage" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.Terra-Storage-Backend.name
  container_access_type = "private"
}
