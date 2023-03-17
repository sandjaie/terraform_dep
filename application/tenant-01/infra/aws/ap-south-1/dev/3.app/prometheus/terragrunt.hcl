terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/applications/prometheus?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "eks" {
  config_path = "../../2.eks/cluster1"
}


inputs = {
  eks_cluster_name              = dependency.eks.outputs.eks_cluster_name
  namespace_name                = "monitoring"
  helm_chart_prometheus_version = "15.12.0"
  helm_chart_grafana_version    = "6.21.0"
}
