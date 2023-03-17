resource "kubernetes_manifest" "configmap" {
  manifest = yamldecode(file("${path.module}/files/configmap.yaml"))
}

resource "kubernetes_manifest" "deployment" {
  manifest = yamldecode(file("${path.module}/files/deployment.yaml"))
}

resource "kubernetes_manifest" "pv" {
  manifest = yamldecode(file("${path.module}/files/pv.yaml"))
}

resource "kubernetes_manifest" "pvc" {
  manifest = yamldecode(file("${path.module}/files/pvc.yaml"))
}

resource "kubernetes_manifest" "service" {
  manifest = yamldecode(file("${path.module}/files/service.yaml"))
}
