variable "environment" {
  description = "Deployment environment. E.g. TPROD, APROD, CPROD"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}

variable "availability_zones" {
  description = "AZs of the region"
  type        = list(string)
}
