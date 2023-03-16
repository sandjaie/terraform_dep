locals {
  private_subnet_ids = flatten(module.private_subnets.subnet_ids)
  public_subnet_ids  = flatten(module.public_subnets.subnet_ids)
  vpc_id             = module.vpc.vpc_id
}
