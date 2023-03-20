resource "aws_eks_cluster" "eks_cluster" {
  name = var.cluster_name

  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = var.eks_version

  vpc_config {
    subnet_ids              = var.subnet_ids
    endpoint_private_access = var.endpoint_private_access
    endpoint_public_access  = var.endpoint_public_access
    public_access_cidrs = [
      "0.0.0.0/0",
    ]
  }

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = var.eks_service_ipv4_cidr
  }

  enabled_cluster_log_types = var.enable_cluster_cw_logs ? [
    "api", "audit", "authenticator", "controllerManager", "scheduler"
  ] : null

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy,
    aws_iam_role_policy_attachment.eks_service_policy
  ]

  tags = local.tags
}

resource "aws_cloudwatch_log_group" "log_group" {
  count = var.enable_cluster_cw_logs ? 1 : 0

  name              = "/aws/eks/${var.cluster_name}/cluster"
  retention_in_days = 7
  tags              = local.tags
}
