resource "kubernetes_namespace" "services" {
  metadata {
    name = var.namespace_name
  }
}
