output "eks_console_cluster_role" {
  value = var.create_eks_full_access_cluser_role ? kubernetes_cluster_role.eks_console_full_access[0].id : null
}

output "eks_read_only_role" {
  value = var.create_eks_read_only_role ? kubernetes_cluster_role.eks_read_only[0].id : null
}

output "eks_write_access_role" {
  value = var.create_eks_write_access_role ? kubernetes_cluster_role.eks_write_access[0].id : null
}

output "eks_console_full_access_cluster_role_group" {
  value = local.eks_console_full_access_role_group_name
}

output "eks_read_only_group_name" {
  value = local.eks_read_only_role_group_name
}

output "eks_write_access_group_name" {
  value = local.eks_write_access_group_name
}
