variable "environment" {
  description = "environment that the vpv belongs too"
  type        = string
}

variable "cost_center" {
  description = "cost_center that the vpc belongs too"
  type        = string
}

variable "nodegroup_name" {
  description = "nodegroup name"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnets where node group needs to be deployed"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of SGs to be associated with launch template"
  type        = list(string)
  default     = []
}

variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}

variable "root_volume_size" {
  description = "Size of root volume"
  type        = number
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "cluster_index" {
  description = "Index of the cluster"
  type        = number
  default     = 1
}

variable "aws_keyname" {
  description = "Name of the keypair to use for the VM"
  type        = string
  default     = null
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  type        = number
}

variable "desired_size" {
  description = "Desired number of worker nodes."
  type        = number
}

variable "ng_name_prefix" {
  description = "Node group name prefix"
  type        = string
  default     = null
}
