locals {
  private_subnet_ids = flatten(module.private_subnets.subnet_ids)
  public_subnet_ids  = flatten(module.public_subnets.subnet_ids)
  vpc_id             = module.vpc.vpc_id
  public_rt_id       = module.public_route_table.rt_table_id
}

locals {
  tags = {
    Managed_by  = "Terraform"
    Environment = var.environment
    CostCenter  = var.cost_center
  }
}
