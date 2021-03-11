variable "aks_config" {
    type = map 
    default = {
        cluster_name                 = "example-aks1"
        kubernetes_version           = "1.18.14"
        node_pool_name               = "node1"
        min_count                    = "1"
        max_count                    = "1"
        client_id                    = "client_id"
        client_secret                = "client_secret"
        environment                  = "dev"
        resource_group_name_location = "West Europe"
        resource_group_name          = "dev"
        username                     = "centos"
        vm_size                      = "Standard_A2_v2"
    }
}
