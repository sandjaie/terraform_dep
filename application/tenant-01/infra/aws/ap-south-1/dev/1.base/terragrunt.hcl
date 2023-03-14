terraform {
  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/base?ref=main"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  vpc_cidr    = "10.100.0.0/22"
  cidr_blocks = ["10.100.0.0/24", "10.100.1.0/24", "10.100.2.0/24"]
}
