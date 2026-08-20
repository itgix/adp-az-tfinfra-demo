project_name              = "contoso"
environment               = "dev"
region                    = "swedencentral"
region_short              = "sc"
az_subscription_id        = "f7f8b016-64ca-4d42-afad-de91b2eae685"
provision_vnet            = false
subnet_aks_nodes_cidr     = "10.10.1.0/24"
subnet_aks_apiserver_cidr = "10.10.2.0/28"
workload_private_dns_zones = [

]
workload_public_dns_zones = [

]
provision_aks       = true
aks_private_cluster = false
aks_cluster_version = "1.36"
aks_sku = {
  "name" = "Base"
  "tier" = "Free"
}
aks_outbound_type = "loadBalancer"
aks_admin_group_ids = [

]
aks_system_pool = {
  "name"    = "system"
  "vm_size" = "Standard_B2ms"
  "os_sku"  = "AzureLinux"
  "availability_zones" = [
    "1"
  ]
  "enable_auto_scaling" = true
  "min_count"           = 1
  "max_count"           = 2
  "count_of"            = 2
  "os_disk_size_gb"     = 128
  "upgrade_settings" = {
    "max_surge" = "1"
  }
}
provision_identities       = true
provision_kubelet_identity = true
enable_eso                 = true
enable_loki                = true
budget_enabled             = false