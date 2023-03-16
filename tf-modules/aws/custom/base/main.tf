module "vpc" {
  source = "../../native/networking/vpc"

  vpc_cidr = var.vpc_cidr
  name     = var.vpc_name

  aws_region  = var.aws_region
  cost_center = var.cost_center
  environment = var.environment
}

module "private_subnets" {
  source = "../../native/networking/subnet"

  availability_zones = var.availability_zones
  cidr_blocks        = var.private_subnet_cidrs
  subnet_type        = "private"
  vpc_id             = local.vpc_id
  cost_center        = var.cost_center
  environment        = var.environment
}

module "public_subnets" {
  source = "../../native/networking/subnet"

  availability_zones = var.availability_zones
  cidr_blocks        = var.public_subnet_cidrs
  subnet_type        = "public"
  vpc_id             = local.vpc_id
  cost_center        = var.cost_center
  environment        = var.environment
}

module "public_route_table" {
  source = "../../native/networking/route_table"

  cost_center = var.cost_center
  environment = var.environment
  prefix      = "public"
  vpc_id      = local.vpc_id
}

module "internet_gateway" {
  source      = "../../native/networking/internet_gateway"
  cost_center = var.cost_center
  environment = var.environment
  vpc_id      = local.vpc_id
  vpc_name    = var.vpc_name
}

resource "aws_route" "internet_gateway" {
  depends_on = [
    module.public_route_table,
    module.internet_gateway
  ]

  route_table_id         = local.public_rt_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.internet_gateway.igw_id
}

resource "aws_route_table_association" "public_subnets_association" {
  depends_on = [
    module.public_subnets,
    module.public_route_table
  ]

  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(module.public_subnets.subnet_ids, count.index)
  route_table_id = local.public_rt_id
}

module "private_route_table" {
  source      = "../../../aws/native/networking/route_table"
  cost_center = var.cost_center
  environment = var.environment
  prefix      = "private"
  vpc_id      = local.vpc_id
}

resource "aws_route_table_association" "private_subnets_association" {
  depends_on = [
    module.private_route_table,
  ]

  count          = length(var.private_subnet_cidrs)
  subnet_id      = element(var.private_subnet_cidrs, count.index)
  route_table_id = module.private_route_table.rt_table_id
}

resource "aws_eip" "nat_elastic_ip" {
  vpc = true

  tags = merge(local.tags, {
    Name = "${var.environment}-elasticIP"
  })
}

module "nat_gateway" {
  source = "../../native/networking/nat_gateway"

  availability_zones = var.availability_zones
  aws_region         = var.aws_region
  cost_center        = var.cost_center
  elastic_ip         = aws_eip.nat_elastic_ip.id
  environment        = var.environment
  groupprefix        = "private"
  subnet_ids         = local.private_subnet_ids
}

resource "aws_route" "nat_gateway" {
  depends_on = [
    module.private_route_table,
    module.nat_gateway
  ]

  route_table_id         = module.private_route_table.rt_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.nat_gateway.nat_gw_id
}
