locals {
  tags = {
    Managed_by  = "Terraform"
    Environment = var.environment
    CostCenter  = var.cost_center
    Name        = var.cluster_name
  }
}
