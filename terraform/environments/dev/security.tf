# Network Security Group for Application Subnet
resource "azurerm_network_security_group" "app" {
  name                = "nsg-securecloud-app-dev"
  location            = azurerm_resource_group.securecloud.location
  resource_group_name = azurerm_resource_group.securecloud.name

  security_rule {
    name                       = "Deny-Internet-Inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Deny-VNet-Inbound"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  }

  tags = {
    project     = "SecureCloud"
    environment = "development"
    managed_by  = "terraform"
  }
}

# Network Security Group for Management Subnet
resource "azurerm_network_security_group" "management" {
  name                = "nsg-securecloud-management-dev"
  location            = azurerm_resource_group.securecloud.location
  resource_group_name = azurerm_resource_group.securecloud.name

  security_rule {
    name                       = "Deny-Internet-Inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Deny-VNet-Inbound"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "VirtualNetwork"
    destination_address_prefix = "*"
  }

  tags = {
    project     = "SecureCloud"
    environment = "development"
    managed_by  = "terraform"
  }
}

# Associate Application NSG with Application Subnet
resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = azurerm_subnet.app.id
  network_security_group_id = azurerm_network_security_group.app.id
}

# Associate Management NSG with Management Subnet
resource "azurerm_subnet_network_security_group_association" "management" {
  subnet_id                 = azurerm_subnet.management.id
  network_security_group_id = azurerm_network_security_group.management.id
}
