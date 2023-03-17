variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}

variable "namespace_name" {
  description = "Name of the namespace to be created"
  type        = string
}

variable "nginx_replicas_count" {
  description = "Number of nginx replicas"
  type        = number
  default     = 2
}

variable "enable_loadbalancer" {
  description = "Boolean to set if the service needs loadbalancer. Else uses NodePort"
  type        = bool
  default     = false
}
