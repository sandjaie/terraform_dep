#provider "kubernetes" {
#  host                   = var.host
#  cluster_ca_certificate = var.cluster_ca_certificate
#  token                  = var.token
#}
#
#variable "host" {}
#variable "token" {}
#variable "cluster_ca_certificate" {}

data "aws_eks_cluster" "cluster" {
  name = var.eks_cluster_name
}

data "aws_eks_cluster_auth" "cluster" {
  name = var.eks_cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}
