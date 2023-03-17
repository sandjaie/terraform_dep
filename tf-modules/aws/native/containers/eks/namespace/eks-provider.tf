provider "kubernetes" {
  host                   = var.host
  cluster_ca_certificate = var.cluster_ca_certificate
  token                  = var.token
}

variable "host" {}
variable "token" {}
variable "cluster_ca_certificate" {}
