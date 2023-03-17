locals {
  namespaces = flatten([
    kubernetes_namespace.services.metadata.*.name
  ])
}

output "namespaces" {
  value = local.namespaces
}
