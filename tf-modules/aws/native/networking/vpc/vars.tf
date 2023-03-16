variable "environment" {
  description = "Environment that the VPC belongs to"
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}

variable "aws_region" {
  description = "AWS region i.e us-west-2, us-east-1"
  type        = string
}

variable "name" {
  description = "Name of the vpc. If left null, the environment name will be the vpc name"
  type        = string
  default     = null
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length"
  type        = string
}

variable "create_vpc_ipam" {
  description = "Boolean to enable IPAM Pool creation in the VPC"
  type        = bool
  default     = false
}

variable "ipv4_netmask_length" {
  description = "The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id."
  type        = number
  default     = null
}

variable "ipam_pool_cidr" {
  description = "The CIDR you want to assign to the ipam pool."
  type        = string
  default     = null
}

variable "instance_tenancy" {
  description = "Tenancy option for instances launched into the VPC. Options can be default or dedicated."
  type        = string
  default     = "default"
}
