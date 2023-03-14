variable "environment" {
  description = "environment that the vpv belongs too"
  type        = string
}

variable "cost_center" {
  description = "cost_center that the vpc belongs too"
  type        = string
}

variable "aws_keyname" {
  description = "Name of the keypair to use for the VM"
  type        = string
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets in which the Mongodb Instances should be spun up"
}

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

variable "enable_cluster_cw_logs" {
  description = "Boolean to enable EKS cluster logs"
  type        = bool
  default     = false
}

variable "eks_service_ipv4_cidr" {
  description = "The CIDR block to assign Kubernetes pod and service IP addresses from."
  type        = string
  default     = "10.110.0.0/23"
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

variable "resolve_conflicts" {
  description = "Define how to resolve parameter value conflicts when when applying version updates to the add-on"
  type        = string
  default     = "OVERWRITE"
}
