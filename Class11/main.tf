module "aks" {
  source                       = "farrukh90/aks/azure"
  cluster_name                 = var.aks_config["cluster_name"]
  kubernetes_version           = var.aks_config["kubernetes_version"]
  node_pool_name               = var.aks_config["node_pool_name"]
  min_count                    = var.aks_config["min_count"]
  max_count                    = var.aks_config["max_count"]
  client_id                    = var.aks_config["client_id"]
  client_secret                = var.aks_config["client_secret"]
  environment                  = var.aks_config["environment"]
  resource_group_name_location = var.aks_config["resource_group_name_location"]
  resource_group_name          = var.aks_config["resource_group_name"]
  username                     = var.aks_config["username"]
  vm_size                      = var.aks_config["vm_size"]
}
