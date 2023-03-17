terraform {
  source = "../../3.app//data"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  eks_cluster_name = "tenant-01-dev-1"
}
