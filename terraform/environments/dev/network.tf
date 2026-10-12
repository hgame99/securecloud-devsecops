# Virtual Network
resource "azurerm_virtual_network" "securecloud" {
  name                = "vnet-securecloud-dev"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.securecloud.location
  resource_group_name = azurerm_resource_group.securecloud.name

  tags = {
    project     = "SecureCloud"
    environment = "development"
    managed_by  = "terraform"
  }
}

# Application Subnet
resource "azurerm_subnet" "app" {
  name                 = "snet-app"
  resource_group_name  = azurerm_resource_group.securecloud.name
  virtual_network_name = azurerm_virtual_network.securecloud.name
  address_prefixes     = ["10.10.1.0/24"]
}

# Management Subnet
resource "azurerm_subnet" "management" {
  name                 = "snet-management"
  resource_group_name  = azurerm_resource_group.securecloud.name
  virtual_network_name = azurerm_virtual_network.securecloud.name
  address_prefixes     = ["10.10.2.0/24"]
}
