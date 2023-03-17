resource "kubernetes_manifest" "configmap" {
  manifest = yamldecode(file("files/configmap.yml"))
}

resource "kubernetes_manifest" "deployment" {
  manifest = yamldecode(file("files/deployment.yml"))
}

resource "kubernetes_manifest" "pvc" {
  manifest = yamldecode(file("files/pvc.yml"))
}

resource "kubernetes_manifest" "service" {
  manifest = yamldecode(file("files/service.yml"))
}
