resource "azurerm_resource_group" "example" {
  name     = "pinkutinku00223"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "example" {
depends_on = [azurerm_resource_group.example]

  name                = "akspinkutinku00223"
  location            = "West Europe"
  resource_group_name = "pinkutinku00223"
  dns_prefix          = "exampleaks1"

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

