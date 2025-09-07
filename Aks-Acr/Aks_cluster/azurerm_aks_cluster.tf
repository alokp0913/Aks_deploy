resource "azurerm_resource_group" "example" {
  name     = "pinkutinku00223"
  location = "West Europe"
}


resource "azurerm_resource_group" "example1" {
  name     = "tinku00223"
  location = "japan east"
}

resource "azurerm_kubernetes_cluster" "example1" {
depends_on = [azurerm_resource_group.example1]

  name                = "akstinku00223"
  location            = "japan east"
  resource_group_name = "tinku00223"
  dns_prefix          = "aks8781"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "standard_a2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
