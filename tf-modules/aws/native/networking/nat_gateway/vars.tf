#variable "subnet_ids" {
#  description = "List of subnet IDs where the NAT needs to be created"
#  type        = list(string)
#}

#variable "elastic_ips" {
#  description = "Elastic IPs for the NAT gaeway"
#  type        = list(string)
#}

#variable "availability_zones" {
#  description = "List of availability_zones of the region"
#  type        = list(string)
#}

variable "subnet_id" {
  description = "Subnet ID where the NAT needs to be created"
  type        = string
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

variable "connectivity_type" {
  description = "Connectivity type for the gateway. Valid values are private and public"
  type        = string
  default     = "public"
}
