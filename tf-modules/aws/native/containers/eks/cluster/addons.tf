resource "aws_eks_addon" "eks_cni" {
  count      = var.cni_addon_version == null ? 0 : 1
  depends_on = [aws_eks_cluster.eks_cluster]

  addon_name        = "vpc-cni"
  cluster_name      = var.cluster_name
  addon_version     = var.cni_addon_version
  resolve_conflicts = var.resolve_conflicts
  tags              = local.tags
}

resource "aws_eks_addon" "eks_kube_proxy" {
  count      = var.kube_proxy_version == null ? 0 : 1
  depends_on = [aws_eks_cluster.eks_cluster]

  addon_name        = "kube-proxy"
  cluster_name      = var.cluster_name
  addon_version     = var.kube_proxy_version
  resolve_conflicts = var.resolve_conflicts
  tags              = local.tags
}

resource "aws_eks_addon" "eks_coredns" {
  count      = var.coredns_version == null ? 0 : 1
  depends_on = [aws_eks_cluster.eks_cluster]

  addon_name        = "coredns"
  cluster_name      = var.cluster_name
  addon_version     = var.coredns_version
  resolve_conflicts = var.resolve_conflicts
  tags              = local.tags
}


resource "aws_eks_addon" "ebs_csi_driver" {
  count      = var.ebs_csi_driver_version == null ? 0 : 1
  depends_on = [aws_eks_cluster.eks_cluster]

  addon_name        = "aws-ebs-csi-driver"
  cluster_name      = var.cluster_name
  addon_version     = var.ebs_csi_driver_version
  resolve_conflicts = var.resolve_conflicts
  tags              = local.tags
}
