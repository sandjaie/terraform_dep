variable "cluster_name" {
  description = "Cluster name for EKS"
  type        = string
  default     = null
}

variable "eks_version" {
  description = "EKS version"
  type        = string
}

variable "cluster_index" {
  description = "Index of the cluster"
  type        = number
  default     = 1
}

variable "subnet_ids" {
  description = "Subnets in which the Mongodb Instances should be spun up"
  type        = list(string)
}

variable "nodegroup_name" {
  description = "Name of the nodegroup"
  type        = string
  default     = "app"
}

variable "nodegroup" {
  description = "Specifications of nodegroup"
  type = object({
    min_size         = number
    max_size         = number
    desired_size     = number
    root_volume_size = number
    instance_type    = string
  })
  default = {
    min_size         = 1
    max_size         = 1
    desired_size     = 1
    root_volume_size = 20
    instance_type    = "t3.small"
  }
}

variable "environment" {
  description = "environment that the vpv belongs too"
  type        = string
}

variable "cost_center" {
  description = "cost_center that the vpc belongs too"
  type        = string
}

variable "cni_addon_version" {
  description = "CNI plugin addon version"
  type        = string
  default     = null
}

variable "coredns_version" {
  description = "coredns version - addon"
  type        = string
  default     = null
}

variable "kube_proxy_version" {
  description = "kube_proxy version - addon"
  type        = string
  default     = null
}
