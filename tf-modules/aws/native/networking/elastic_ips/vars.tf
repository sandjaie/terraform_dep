variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "cost_center" {
  description = "Cost center to which the resource is tagged under"
  type        = string
}

variable "number_of_ips" {
  description = "Number of elastic ips needed"
  type        = number
}
