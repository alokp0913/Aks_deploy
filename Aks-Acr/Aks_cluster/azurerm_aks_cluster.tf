resource "azurerm_resource_group" "example" {
  name     = "pinkutinku00223"
  location = "West Europe"
}


resource "azurerm_resource_group" "example1" {
  name     = tinku00223"
  location = "Korea Southe"
}

resource "azurerm_kubernetes_cluster" "example1" {
depends_on = [azurerm_resource_group.example1]

  name                = "akspinkutinku00223"
  location            = "Korea Southe"
  resource_group_name = "tinku00223"
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

