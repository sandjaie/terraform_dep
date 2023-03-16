locals {
  tags = {
    Environment = var.environment
    CostCenter  = var.cost_center
    Managed_By  = "Terraform"
  }
}
