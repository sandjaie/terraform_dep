variable "subnet_ids" {
  type        = list(string)
  description = "list of subnet ids"
}

variable "elastic_ip" {
  description = "Elastic IP for the NAT gaeway"
  type        = string
}

variable "groupprefix" {
  description = "Prefix added to the name of the nat. e.g Public or Private"
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}

variable "availability_zones" {
  description = "List of availability_zones of the region"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS Region."
  type        = string
}

variable "connectivity_type" {
  description = "Connectivity type for the gateway. Valid values are private and public"
  type        = string
  default     = "public"
}
