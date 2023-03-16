locals {
  tags = {
    Managed_By  = "Terraform"
    CostCenter  = var.cost_center
    Environment = var.environment
  }
}
