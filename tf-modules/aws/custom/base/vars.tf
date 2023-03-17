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

variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length"
  type        = string
}

variable "private_subnet_cidrs" {
  description = "The IPv4 CIDR block for the private subnets."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "The IPv4 CIDR block for the public subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "AZ for the subnet."
  type        = list(string)
}

variable "vpc_name" {
  description = "Name of the vpc. If left null, the environment name will be the vpc name"
  type        = string
  default     = null
}
