terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/eks?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "base" {
  config_path = "../1.base"
}

inputs = {
  subnet_ids         = dependency.base.outputs.subnet_ids
  eks_version        = "1.24"
  cni_addon_version  = "v1.12.5-eksbuild.2"
  kube_proxy_version = "v1.24.10-eksbuild.2"
  coredns_version    = "v1.8.7-eksbuild.4"
  nodegroup_name     = "app-1"
}
