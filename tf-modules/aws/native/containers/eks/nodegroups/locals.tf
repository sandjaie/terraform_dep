locals {
  name_prefix    = "${var.environment}-${var.cluster_index}-${var.nodegroup_name}"
  lt_name_prefix = "${var.environment}-${var.nodegroup_name}"
  ec2_ssh_key    = var.aws_keyname == null ? "sand10_apsouth1" : var.aws_keyname
}

locals {
  tags = {
    Managed_by  = "Terraform"
    Environment = var.environment
    Cluster     = var.eks_cluster_name
    CostCenter  = var.cost_center
  }
}
