resource "kubernetes_namespace" "namespace" {
  count = length(var.namespace_list)
  metadata {
    name = element(var.namespace_list, count.index)
  }
}
