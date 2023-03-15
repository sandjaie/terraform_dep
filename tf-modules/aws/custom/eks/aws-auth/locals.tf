locals {
  map_worker_roles = [
    for role_arn in var.workers_role_arns : {
      rolearn : role_arn
      username : "system:node:{{EC2PrivateDNSName}}"
      groups : [
        "system:bootstrappers",
        "system:nodes"
      ]
    }
  ]
}

locals {
  eks_console_full_access_role_group_name          = "${var.eks_console_full_access_role_name}-group"
  eks_console_full_access_role_clusterrole_name    = "${var.eks_console_full_access_role_name}-clusterrole"
  eks_console_full_access_role_clusterrole_binding = "${var.eks_console_full_access_role_name}-binding"

  eks_read_only_role_group_name          = "${var.eks_read_only_name}-group"
  eks_read_only_role_clusterrole_name    = "${var.eks_read_only_name}-clusterrole"
  eks_read_only_role_clusterrole_binding = "${var.eks_read_only_name}-binding"

  eks_write_access_group_name       = "${var.eks_write_access_name}-group"
  eks_write_access_clusterrole_name = "${var.eks_write_access_name}-clusterrole"
  eks_write_access_binding          = "${var.eks_write_access_name}-binding"
}
