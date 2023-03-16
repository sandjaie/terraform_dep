terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/applications/services/nginx?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "eks" {
  config_path = "../../2.eks/cluster1"
}


inputs = {
  eks_cluster_name = dependency.eks.outputs.eks_cluster_name
  namespace_name   = "services"
  
}
