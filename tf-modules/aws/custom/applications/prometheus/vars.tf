variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}
#
#variable "namespace_name" {
#  description = "Name of the namespace to be created"
#  type        = string
#}
#
#variable "prometheus_replicas_count" {
#  description = "Number of nginx replicas"
#  type        = number
#  default     = 1
#}
#
#variable "create_loadbalancer" {
#  description = "Boolean to set if the service needs loadbalancer. Else uses NodePort"
#  type        = bool
#  default     = false
#}
#
#variable "create_namespace" {
#  description = "Boolean set to create the namespace"
#  type        = bool
#  default     = false
#}
