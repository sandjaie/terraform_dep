variable "vpc_id" {
  description = "VPC ID of the subnet"
  type        = string
}

variable "cidr_blocks" {
  description = "The IPv4 CIDR block for the subnet."
  type        = list(string)
}

variable "availability_zones" {
  description = "AZ for the subnet."
  type        = list(string)
}

# tags
variable "environment" {
  description = "Deployment environment. E.g. TPROD, APROD, CPROD"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}

variable "subnet_type" {
  description = "Tag to identßitify the subnet purpose. E.g Private, Public"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
