variable "create_eks_full_access_cluser_role" {
  description = "Creates eks_full_access cluster role in kube-system which is utilised by the deployrunner Note: uses cluster-admin by default"
  type        = bool
  default     = false
}

variable "workers_role_arns" {
  description = "List of Role ARNs of the worker nodes"
  type        = list(string)
  default     = []
}

variable "map_additional_iam_roles" {
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  description = "Additional IAM roles to add to `config-map-aws-auth` ConfigMap"
  default     = []
}

variable "map_additional_iam_users" {
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  description = "Additional IAM users to add to `config-map-aws-auth` ConfigMap"
  default     = []
}

variable "map_additional_aws_accounts" {
  type        = list(string)
  description = "Additional AWS account numbers to add to `config-map-aws-auth` ConfigMap"
  default     = []
}

variable "create_aws_auth_configmap" {
  description = "Creates aws-auth configmap"
  type        = bool
  default     = true
}

variable "create_eks_read_only_role" {
  description = "Creates eks read only role"
  type        = bool
  default     = true
}

variable "eks_read_only_name" {
  description = "Name of the read_only cluster role"
  type        = string
  default     = "eks-read-only"

}
variable "eks_console_full_access_role_name" {
  description = "Name of the eks_console_full_access cluster role"
  type        = string
  default     = "eks-console-full-access"
}

variable "create_eks_write_access_role" {
  description = "Creates cluster role with write access"
  type        = bool
  default     = false
}

variable "eks_write_access_name" {
  description = "Name of the eks_write_access cluster role"
  type        = string
  default     = "eks-write-access"
}

variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}
