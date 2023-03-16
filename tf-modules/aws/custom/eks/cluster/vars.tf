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
    instance_type    = "t3.medium"
  }
}

variable "environment" {
  description = "Environment that the VPC belongs to"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
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

variable "endpoint_public_access" {
  description = "Whether the Amazon EKS public API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "endpoint_private_access" {
  description = "Whether the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = true
}
