terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/base?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  vpc_name             = "tenant-01-dev"
  vpc_cidr             = "10.100.0.0/22"
  public_subnet_cidrs  = ["10.100.0.0/24", "10.100.1.0/25", "10.100.1.128/25"]
  private_subnet_cidrs = ["10.100.2.0/24", "10.100.3.0/25", "10.100.3.128/25"]
}
