terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/eks/cluster?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "base" {
  config_path = "../../1.base"
}

inputs = {
  cluster_name      = "tenant-01-dev-2"
  subnet_ids        = dependency.base.outputs.subnet_ids
  eks_version       = "1.23"
  cni_addon_version = "v1.12.5-eksbuild.2"
  #kube_proxy_version = "v1.23.16-eksbuild.2"
  #coredns_version    = "v1.8.7-eksbuild.4"
  nodegroup_name    = "app-1"
}
