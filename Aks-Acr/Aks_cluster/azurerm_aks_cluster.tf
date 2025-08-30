resource "azurerm_resource_group" "example" {
  name     = "aksWala_RG"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "chomu-aks1"
  location            = "aksWala_RG"
  resource_group_name = "West Europe"
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

