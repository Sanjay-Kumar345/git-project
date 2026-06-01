resource "azurerm_resource_group" "rgs"{
    name = "Alpha"
    location = "Central India"

}
  
resource "azuerm_storage_account"{
    name = "kddi-strg"
    location = azurerm_resource_group.rgs.location
    resource_group_name = azurerm_resource_group.rgs.name
    account_tier = "Standard"
    account_replication_type = "GRS"


}
  
