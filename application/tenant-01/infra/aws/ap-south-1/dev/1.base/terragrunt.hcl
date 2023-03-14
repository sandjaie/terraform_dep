terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/base?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  vpc_name     = "tenant-01-dev"
  vpc_cidr     = "10.100.0.0/22"
  subnet_cidrs = ["10.100.0.0/24", "10.100.1.0/24", "10.100.2.0/24"]
  subnet_type  = "public"
}
