variable "environment" {
  description = "environment that the vpv belongs too"
  type        = string
}

variable "cost_center" {
  description = "cost_center that the vpc belongs too"
  type        = string
}

variable "aws_region" {
  description = "AWS region i.e us-west-2, us-east-1"
  type        = string
}

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length"
  type        = string
}

variable "subnet_cidrs" {
  description = "The IPv4 CIDR block for the subnet."
  type        = list(string)
}

variable "availability_zones" {
  description = "AZ for the subnet."
  type        = list(string)
}

variable "subnet_type" {
  description = "Tag to identßitify the subnet purpose. E.g Private, Public"
  type        = string
}

variable "vpc_name" {
  description = "Name of the vpc. If left null, the environment name will be the vpc name"
  type        = string
  default     = null
}
