terraform {
  required_version = ">= 1.2.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.6.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.50.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.8.0"
    }
  }
}
