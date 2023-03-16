output "namespace_name" {
  value = kubernetes_namespace.services.metadata[0].name
}
