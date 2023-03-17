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
  subnet_ids              = dependency.base.outputs.private_subnet_ids
  eks_version             = "1.23"
  cni_addon_version       = "v1.12.5-eksbuild.2"
  ebs_csi_driver_version  = "v1.16.1-eksbuild.1"
  nodegroup_name          = "app1"
  endpoint_private_access = true
  endpoint_public_access  = true

  nodegroup = {
    min_size         = 1
    max_size         = 3
    desired_size     = 1
    root_volume_size = 8
    instance_type    = "t3.medium"
  }
}
