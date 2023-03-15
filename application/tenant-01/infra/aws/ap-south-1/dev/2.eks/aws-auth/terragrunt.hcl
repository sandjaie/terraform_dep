#terraform {
#  source = "git::https://github.com/sandjaie/terraform_dep.git//tf-modules/aws/custom/eks/aws-auth?ref=main"
#}
#
#include "root" {
#  path = find_in_parent_folders()
#}
#
#inputs = {
#  workers_role_arns = ["arn:aws:iam::118292819096:role/tenant-01-dev-1-app-1"]
#  eks_cluster_name  = "tenant-01-dev-1"
#
#}
