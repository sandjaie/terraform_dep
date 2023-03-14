module "vpc" {
  source = "../../native/networking/vpc"

  vpc_cidr = var.vpc_cidr
  name     = var.vpc_name

  aws_region  = var.aws_region
  cost_center = var.cost_center
  environment = var.environment
}

module "subnet" {
  source = "../../native/networking/subnet"

  availability_zones = var.availability_zones
  cidr_blocks        = var.subnet_cidrs
  subnet_type        = var.subnet_type
  vpc_id             = module.vpc.vpc_id
  cost_center        = var.cost_center
  environment        = var.environment
}
