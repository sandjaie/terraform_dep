locals {
  private_subnet_ids     = flatten(module.private_subnets.subnet_ids)
  public_subnet_ids      = flatten(module.public_subnets.subnet_ids)
  vpc_id                 = module.vpc.vpc_id
  public_route_table_id  = module.public_route_table.rt_table_id
  private_route_table_id = module.private_route_table.rt_table_id
  igw_id                 = module.internet_gateway.igw_id
  elastic_ips            = module.elastic_ips.elastic_ips
  nat_gw_id              = element(module.nat_gateway.nat_gw_id, 0)
}

locals {
  tags = {
    Managed_by  = "Terraform"
    Environment = var.environment
    CostCenter  = var.cost_center
  }
}
