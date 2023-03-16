variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "vpc_name" {
  description = "VPC Name. To add as the prefix in the name"
  type        = string
}

variable "environment" {
  description = "Deployment environment. e.g dev, staging"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}
