terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/native/containers/namespace?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "eks" {
  config_path = "../../2.eks/cluster1"
}


inputs = {

}


#locals {
#  host                   = data.aws_eks_cluster.cluster.endpoint
#  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
#  token                  = data.aws_eks_cluster_auth.cluster.token
#}
#
#
#generate "k8s_provider" {
#  path      = "k8s_provider.tf"
#  if_exists = "overwrite_terragrunt"
#  contents  = <<EOF
#provider "kubernetes" {
#  host                   = local.host #data.aws_eks_cluster.cluster.endpoint
#  cluster_ca_certificate = local.cluster_ca_certificate #base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
#  token                  = local.toke #data.aws_eks_cluster_auth.cluster.token
#}
#EOF
#}
