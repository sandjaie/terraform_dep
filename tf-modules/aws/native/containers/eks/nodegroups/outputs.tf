output "eks_nodegroup_arn" {
  value = aws_eks_node_group.nodegroup.arn
}

output "eks_nodegroup_role_arn" {
  value = aws_iam_role.eks_node_group_role.arn
}

output "eks_nodegroup_id" {
  value = aws_eks_node_group.nodegroup.id
}
