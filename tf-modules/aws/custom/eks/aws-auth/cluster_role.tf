resource "kubernetes_cluster_role" "eks_console_full_access" {
  count = var.create_eks_full_access_cluser_role ? 1 : 0

  metadata {
    name = "${var.eks_console_full_access_role_name}-clusterrole"
  }

  rule {
    verbs      = ["patch", "create", "get", "list", "delete"]
    api_groups = [""]
    resources = [
      "nodes", "namespaces", "pods", "configmaps", "endpoints", "events", "limitranges", "persistentvolumeclaims",
      "podtemplates", "replicationcontrollers", "resourcequotas", "secrets", "serviceaccounts", "services"
    ]
  }

  rule {
    verbs      = ["patch", "create", "get", "list", "delete"]
    api_groups = ["apps"]
    resources  = ["deployments", "daemonsets", "statefulsets", "replicasets"]
  }

  rule {
    verbs      = ["create", "delete", "patch", "get", "list"]
    api_groups = ["batch"]
    resources  = ["jobs", "cronjobs"]
  }

  rule {
    verbs      = ["get", "list"]
    api_groups = ["coordination.k8s.io"]
    resources  = ["leases"]
  }

  rule {
    verbs      = ["get", "list"]
    api_groups = ["discovery.k8s.io"]
    resources  = ["endpointslices"]
  }

  rule {
    verbs      = ["get", "list"]
    api_groups = ["events.k8s.io"]
    resources  = ["events"]
  }

  rule {
    verbs      = ["patch", "create", "delete", "get", "list"]
    api_groups = ["extensions"]
    resources  = ["daemonsets", "deployments", "ingresses", "networkpolicies", "replicasets"]
  }

  rule {
    verbs      = ["create", "delete", "patch", "get", "list"]
    api_groups = ["networking.k8s.io"]
    resources  = ["ingresses", "networkpolicies"]
  }

  rule {
    verbs      = ["get", "list"]
    api_groups = ["policy"]
    resources  = ["poddisruptionbudgets"]
  }

  rule {
    verbs      = ["get", "list", "create", "delete"]
    api_groups = ["rbac.authorization.k8s.io"]
    resources  = ["rolebindings", "roles", "clusterroles", "clusterrolebindings"]
  }

  rule {
    verbs          = ["bind"]
    api_groups     = ["rbac.authorization.k8s.io"]
    resources      = ["clusterroles"]
    resource_names = ["admin", "edit", "view"]
  }

  rule {
    verbs      = ["create"]
    api_groups = ["rbac.authorization.k8s.io"]
    resources  = ["rolebindings"]
  }

  rule {
    verbs      = ["create", "delete", "patch", "get", "list"]
    api_groups = ["storage.k8s.io"]
    resources  = ["csistoragecapacities", "storageclasses"]
  }
}

resource "kubernetes_cluster_role" "eks_read_only" {
  count = var.create_eks_read_only_role ? 1 : 0

  metadata {
    name = local.eks_read_only_role_clusterrole_name
  }

  rule {
    verbs      = ["get", "list", "watch"]
    api_groups = [""]
    resources  = ["*"]
  }

  rule {
    verbs      = ["get", "list", "watch"]
    api_groups = ["extensions"]
    resources  = ["*"]
  }

  rule {
    verbs      = ["get", "list", "watch"]
    api_groups = ["apps"]
    resources  = ["*"]
  }
}

resource "kubernetes_cluster_role" "eks_write_access" {
  count = var.create_eks_write_access_role ? 1 : 0

  metadata {
    name = local.eks_write_access_clusterrole_name
  }

  rule {
    verbs      = ["get", "list", "watch", "delete", "apply", "create", "patch", "exec"]
    api_groups = [""]
    resources  = ["*"]
  }

  rule {
    verbs      = ["get", "list", "watch", "delete", "apply", "create", "patch", "exec"]
    api_groups = ["extensions"]
    resources  = ["*"]
  }

  rule {
    verbs      = ["get", "list", "watch", "delete", "apply", "create", "patch", "exec"]
    api_groups = ["apps"]
    resources  = ["*"]
  }
}
