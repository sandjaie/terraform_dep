resource "kubernetes_namespace" "services" {
  count = length(var.namespace_list)
  metadata {
    name = element(var.namespace_list, count.index)
  }
}
