remote_state {
  backend = "s3"
  config  = {
    bucket  = "tf-remote-state-bucket-01"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "${local.aws_region}"
    encrypt = true
    profile = "${local.aws_profile}"
  }
}

terraform {
  extra_arguments "aws_profile" {
    commands = [
      "init",
      "apply",
      "refresh",
      "import",
      "plan",
      "taint",
      "untaint"
    ]

    env_vars = {
      AWS_PROFILE = "${local.aws_profile}"
    }
  }
}

locals {
  account_vars     = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
  common_vars      = read_terragrunt_config(find_in_parent_folders("common.hcl"))

  aws_profile = local.account_vars.locals.aws_profile
  aws_region  = local.region_vars.locals.aws_region
}


inputs = merge(
  local.environment_vars.locals,
  local.account_vars.locals,
  local.region_vars.locals,
  local.common_vars.locals
)

generate "aws_provider" {
  path      = "aws_provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  profile = "${local.aws_profile}"
  region = "${local.aws_region}"
}
EOF
}
