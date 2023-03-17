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

variable "service_type" {
  description = "Service type for the nginx deployment. E.g LoadBalancer, NodePort, ClusterIP"
  type        = string
}

variable "create_namespace" {
  description = "Boolean set to create the namespace"
  type        = bool
  default     = false
}
