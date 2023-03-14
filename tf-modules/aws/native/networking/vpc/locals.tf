locals {
  name     = var.name == null ? var.environment : var.name
  vpc_name = format("%s", local.name)


  ipv4_netmask_length = var.create_vpc_ipam ? var.ipv4_netmask_length : null
  ipam_pool_cidr      = var.create_vpc_ipam ? var.ipam_pool_cidr : null
  vpc_cidr            = var.create_vpc_ipam ? null : var.vpc_cidr
}

locals {
  tags = {
    Environment = var.environment
    CostCenter  = var.cost_center
    Region      = var.aws_region
    Managed_By  = "Terraform"
  }
}
