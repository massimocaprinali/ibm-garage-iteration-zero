module "dev_tools_ibmcloud_2" {
  source = "./tools_ibmcloud_2"

  resource_group_name = "${module.dev_iks_cluster.resource_group_name}"
  resource_location   = "${module.dev_iks_cluster.iks_cluster_region}"
  iks_cluster_id      = "${module.dev_iks_cluster.iks_cluster_id}"
  dev_namespace       = "${module.dev_iks_namespaces.dev_namespace_name}"
  prod_namespace      = "${module.dev_iks_namespaces.prod_namespace_name}"
}