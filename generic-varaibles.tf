variable "location" {
  description = "location where resource will be created" #this is not mendatory
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "name of the resource group"
  type        = string
  default     = "morusu-rg"
}

variable "vnet_name" {
  description = "name of the virtual network"
  type        = string
  default     = "kyn-vnet"
}

variable "subnet_name" {
  description = "name of the subnet"
  type        = string
  default     = "websubnet"
}

variable "address_space" {
  description = "address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "environment" {
  description = "environment for the project"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "owner of the project"
  type        = string
  default     = "sap"
}
