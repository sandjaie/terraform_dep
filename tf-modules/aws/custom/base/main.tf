module "vpc" {
  source = "../../native/networking/vpc"

  aws_region  = var.aws_region
  cost_center = var.cost_center
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}

module "subnet" {
  source = "../../native/networking/subnet"

  availability_zones = var.availability_zones
  cidr_blocks        = var.cidr_blocks
  cost_center        = var.cost_center
  environment        = var.environment
  region             = var.aws_region
  vpc_id             = module.vpc.vpc_id
}
