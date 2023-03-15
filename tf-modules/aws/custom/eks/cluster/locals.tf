locals {
  cluster_name = var.cluster_name == null ? format("%s-%s-%s", var.cost_center, var.environment, var.cluster_index) : var.cluster_name
}
