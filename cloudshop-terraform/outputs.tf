output "resource_group_name" {
  description = "Resource group name"
  value       = data.azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  description = "AKS cluster name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "AKS cluster ID"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_config" {
  description = "Kubernetes config"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "vnet_name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  description = "Subnet name"
  value       = azurerm_subnet.subnet.name
}

output "acr_login_server" {
  description = "ACR login server"
  value       = data.azurerm_container_registry.acr.login_server
}
