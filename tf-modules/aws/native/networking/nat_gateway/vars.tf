variable "subnet_ids" {
  description = "list of subnet ids"
  type        = list(string)
}

variable "elastic_ips" {
  description = "Elastic IPs for the NAT gaeway"
  type        = list(string)
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


variable "connectivity_type" {
  description = "Connectivity type for the gateway. Valid values are private and public"
  type        = string
  default     = "public"
}

variable "number_of_natgws" {
  description = "Number of NAT gateways needed"
  type        = number
}
