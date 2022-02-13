variable "az_rg_name" {
  description = "Name of resource group"
  type        = string
  default     = "testrg"
}

variable "az_region" {
  description = "Location of Resource group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}