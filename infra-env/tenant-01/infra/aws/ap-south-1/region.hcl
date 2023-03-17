locals {
  aws_region         = "ap-south-1"
  availability_zones = ["${local.aws_region}a", "${local.aws_region}b", "${local.aws_region}c"]
}
