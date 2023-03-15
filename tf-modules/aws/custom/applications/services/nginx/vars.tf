#variable "cost_center" {
#  description = "Cost center"
#  type        = string
#}
#
#variable "account_id" {
#  description = "Account ID"
#  type        = string
#}
#
#variable "environment" {
#  description = "Deployment environment."
#  type        = string
#}
#
#variable "aws_region" {
#  description = "AWS Region."
#  type        = string
#}

variable "oidc_id" {
  description = "OpenID Connect ID of the eks cluster. Available from 'OpenID Connect provider URL'"
  type        = string
}

variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}

variable "namespace_name" {
  description = "Name of the namespace to be created"
  type        = string
}

variable "eks_oidc_id" {
  description = "OpenID Connect ID of the eks cluster. Available from 'OpenID Connect provider URL'"
  type        = string
}

variable "nginx_replicas_count" {
  description = "Number of nginx replicas"
  type        = number
  default     = 2
}
