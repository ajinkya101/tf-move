#------------------------------
# Create a Azure resource group
#------------------------------
resource "azurerm_resource_group" "rg" {
  name     = var.az_rg_name
  location = var.az_region
  tags     = var.tags
}