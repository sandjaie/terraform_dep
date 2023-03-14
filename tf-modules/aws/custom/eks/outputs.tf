output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "eks_cluster_arn" {
  value = module.eks.eks_cluster_arn
}

output "eks_nodegroup_role_arn" {
  value = module.node_group.eks_nodegroup_role_arn
}
