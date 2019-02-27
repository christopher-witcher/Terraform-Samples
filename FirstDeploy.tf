variable "ResourceGroupName" {}
variable "location" {}
variable "securityRuleName" {}
variable "direction" {}
variable "access" {}
variable "protocol" {}
variable "source_port_range" {}
variable "destination_port_range" {}
variable "source_address_prefix" {}
variable "destination_address_prefix" {}
variable "resourceName" {}
variable "priority" {}
 

provider "azurerm" {

}
resource "azurerm_resource_group" "rg" {
        name = "${var.ResourceGroupName}"
        location = "westus"
}

resource "azurerm_network_security_group" "http" {
  name                = "${var.resourceName}"
  location            = "${var.location}"
  resource_group_name = "${var.ResourceGroupName}"

  security_rule {
    name                       = "${var.securityRuleName}"
    priority                   = "${var.priority}"
    direction                  = "${var.direction}"
    access                     = "${var.access}"
    protocol                   = "${var.protocol}"
    source_port_range          = "${var.source_port_range}"
    destination_port_range     = "${var.destination_port_range}"
    source_address_prefix      = "${var.source_address_prefix}"
    destination_address_prefix = "${var.destination_address_prefix}"
  }
    
}
