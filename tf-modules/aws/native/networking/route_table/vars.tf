variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "prefix" {
  description = "Prefix to add to the route table name."
  type        = string
}

variable "environment" {
  description = "Deployment environment. E.g. TPROD, APROD, CPROD"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}
