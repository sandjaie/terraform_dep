resource "kubernetes_cluster_role_binding" "eks_read_only_binding" {
  depends_on = [kubernetes_cluster_role.eks_read_only]
  metadata {
    name = local.eks_read_only_role_clusterrole_binding
  }

  subject {
    kind = "Group"
    name = local.eks_read_only_role_group_name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = local.eks_console_full_access_role_clusterrole_name
  }
}

resource "kubernetes_cluster_role_binding" "eks_console_full_access_binding" {
  metadata {
    name = local.eks_console_full_access_role_clusterrole_binding
  }

  subject {
    kind = "Group"
    name = local.eks_console_full_access_role_group_name
  }

  #  role_ref {
  #    api_group = "rbac.authorization.k8s.io"
  #    kind      = "ClusterRole"
  #    name      = local.eks_console_full_access_role_clusterrole_name
  #  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
}

resource "kubernetes_cluster_role_binding" "eks_write_access" {
  metadata {
    name = local.eks_write_access_binding
  }

  subject {
    kind = "Group"
    name = local.eks_write_access_group_name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = local.eks_write_access_clusterrole_name
  }
}
