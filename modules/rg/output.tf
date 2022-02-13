output "rg_name" {
  description = "Resource Group Names"
  value       = azurerm_resource_group.rg.name
}
output "rg_location" {
  description = "Resource Group Locations"
  value       = azurerm_resource_group.rg.location
}