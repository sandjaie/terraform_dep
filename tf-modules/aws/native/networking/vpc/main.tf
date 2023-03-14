resource "aws_vpc" "vpc" {
  count = var.create_vpc_ipam ? 0 : 1

  cidr_block           = local.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = var.instance_tenancy


  tags = merge(local.tags, {
    Name = local.vpc_name
  })
}

resource "aws_vpc" "vpc_ipam" {
  count      = var.create_vpc_ipam ? 1 : 0
  depends_on = [aws_vpc_ipam_pool_cidr.vpc_ipam]

  enable_dns_support   = true
  enable_dns_hostnames = true
  ipv4_ipam_pool_id    = aws_vpc_ipam_pool.vpc_ipam[0].id
  ipv4_netmask_length  = local.ipv4_netmask_length

  tags = merge(local.tags, {
    Name = local.vpc_name
  })
}

resource "aws_vpc_ipam_pool" "vpc_ipam" {
  count = var.create_vpc_ipam ? 1 : 0

  address_family = "ipv4"
  ipam_scope_id  = aws_vpc_ipam.vpc_ipam[0].private_default_scope_id
  locale         = data.aws_region.current.name

  tags = merge(local.tags, {
    Name = local.vpc_name
  })
}

resource "aws_vpc_ipam" "vpc_ipam" {
  count = var.create_vpc_ipam ? 1 : 0

  operating_regions {
    region_name = data.aws_region.current.name
  }

  tags = merge(local.tags, {
    Name = local.vpc_name
  })
}

resource "aws_vpc_ipam_pool_cidr" "vpc_ipam" {
  count = var.create_vpc_ipam ? 1 : 0

  ipam_pool_id = aws_vpc_ipam_pool.vpc_ipam[0].id
  cidr         = local.ipam_pool_cidr
}

