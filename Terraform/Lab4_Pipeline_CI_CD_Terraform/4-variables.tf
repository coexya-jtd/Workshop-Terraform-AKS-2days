variable "azureRegion" {
  description = "Azure Region where to deploy resources. Caution the region must support Availability Zone"
  # To get names of Azure Region : az account list-locations
  # To check support of Availability Zone in the Azure Region see https://docs.microsoft.com/bs-latn-ba/azure/availability-zones/az-overview
  type    = string
  default = "westeurope"
}

#  Resource Group Name
variable "resourceGroupName" {
  type    = string
  default = "JTD-Lab"
}


# Variables pour l'authentification du provider Terraform  
variable "AzureSubscriptionID" {
  type = string
}

variable "AzureClientSecret" {
  type = string
}

variable "AzureClientID" {
  type = string
}

variable "AzureTenandID" {
  type = string
}

variable "vnetName" {
    type = string
    default = "Vnet-VM2-jtd"  
}

variable "subnetName" {
    type = string
    default = "Subnet-VM2-jtd"  
}

variable "nicName" {
    type = string
    default = "Nic-2-jtd"
  
}

variable "vmName" {
    type = string
    default = "VM2-Linux"  
}

# az vm list-skus -l westus
variable "vmSize" {
    type = string
    default = "Standard_B2ms"  
}

variable "vmUser" {
    type = string
    default = "adminuser"  
}





