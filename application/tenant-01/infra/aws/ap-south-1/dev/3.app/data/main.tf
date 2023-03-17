data "aws_eks_cluster" "cluster1" {
  name = var.eks_cluster_name
}

data "aws_eks_cluster_auth" "cluster1" {
  name = var.eks_cluster_name
}

output "host" {
  value = data.aws_eks_cluster.cluster1.endpoint
}

output "cluster_ca_certificate" {
  value     = base64decode(data.aws_eks_cluster.cluster1.certificate_authority[0].data)
  sensitive = true
}

output "token" {
  value     = data.aws_eks_cluster_auth.cluster1.token
  sensitive = true
}

