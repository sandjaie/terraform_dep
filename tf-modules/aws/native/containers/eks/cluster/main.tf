resource "aws_eks_cluster" "eks_cluster" {
  name = var.cluster_name

  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = var.eks_version

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = var.eks_service_ipv4_cidr
  }

  enabled_cluster_log_types = var.enable_cluster_cw_logs ? [
    "api", "audit", "authenticator", "controllerManager", "scheduler"
  ] : null

  #  depends_on = [
  #    aws_iam_role_policy_attachment.eks_cluster_AmazonEKSServicePolicy,
  #  ]

  tags = local.tags
}


resource "aws_iam_role" "eks_cluster_role" {
  name               = var.cluster_name
  assume_role_policy = data.aws_iam_policy_document.eks_policy_document.json
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_cluster_role.name
}

resource "aws_iam_role_policy_attachment" "eks_service_policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.eks_cluster_role.name
}

resource "aws_cloudwatch_log_group" "example" {
  count = var.enable_cluster_cw_logs ? 1 : 0

  name              = "/aws/eks/${var.cluster_name}/cluster"
  retention_in_days = 7
  tags              = local.tags
}

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
