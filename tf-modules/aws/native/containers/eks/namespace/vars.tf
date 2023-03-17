variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}

variable "namespace_list" {
  description = "List of namespaces to be created"
  type        = list(string)
}
