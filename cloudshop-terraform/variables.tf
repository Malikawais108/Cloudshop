variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "cloudshop-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "cloudshop-aks"
}

variable "node_count" {
  description = "Number of nodes in AKS cluster"
  type        = number
  default     = 1
}

variable "node_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_B2s"
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
  default     = "cloudshopacr"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "cloudshop-vnet"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "cloudshop-subnet"
}

variable "subnet_prefix" {
  description = "Subnet address prefix"
  type        = string
  default     = "10.0.1.0/24"
}
