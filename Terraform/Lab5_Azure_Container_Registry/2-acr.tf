resource "azurerm_container_registry" "Terra-acr" {
  name                = var.acrName
  resource_group_name = var.resourceGroupName
  location            = var.azureRegion
  sku                 = "Standard"
  admin_enabled       = false
  tags = {
        Environment = "JTD-K8S",
        Client      = "Coexya DIA",
        Responsable = "AML"
    }
}

# https://www.terraform.io/language/values/outputs#declaring-an-output-value
# cette output value sera utilisée dans un datasources terraform_remote_state dans le code du cluster AKS
# pour l'affectation du role ACR Pull au cluster AKS sur cette registry
output "acr-id" {
  value = azurerm_container_registry.Terra-acr.id
}
