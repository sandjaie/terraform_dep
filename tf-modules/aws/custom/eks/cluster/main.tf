module "eks" {
  source                  = "../../../native/containers/eks/cluster"
  cluster_name            = local.cluster_name
  eks_version             = var.eks_version
  cluster_index           = var.cluster_index
  subnet_ids              = var.subnet_ids
  endpoint_private_access = var.endpoint_private_access
  endpoint_public_access  = var.endpoint_public_access

  cni_addon_version      = var.cni_addon_version
  kube_proxy_version     = var.kube_proxy_version
  coredns_version        = var.coredns_version
  ebs_csi_driver_version = var.ebs_csi_driver_version

  environment = var.environment
  cost_center = var.cost_center
}

module "node_group" {
  source = "../../../native/containers/eks/nodegroups"

  depends_on = [module.eks]

  min_size         = var.nodegroup.min_size
  max_size         = var.nodegroup.max_size
  desired_size     = var.nodegroup.desired_size
  root_volume_size = var.nodegroup.root_volume_size
  instance_type    = var.nodegroup.instance_type
  cluster_name     = local.cluster_name
  nodegroup_name   = var.nodegroup_name
  subnet_ids       = var.subnet_ids

  environment = var.environment
  cost_center = var.cost_center
}
