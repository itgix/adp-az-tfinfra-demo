project_name              = "contoso"
environment               = "dev"
region                    = "swedencentral"
az_subscription_id        = "f7f8b016-64ca-4d42-afad-de91b2eae685"
provision_vnet            = false
subnet_aks_nodes_cidr     = "10.10.1.0/24"
subnet_aks_apiserver_cidr = "10.10.2.0/28"
provision_aks             = true
aks_cluster_version       = "1.36"
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
budget_enabled = false