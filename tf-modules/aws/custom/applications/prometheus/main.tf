resource "kubernetes_manifest" "configmap" {
  manifest = yamldecode(file("${path.module}/../files/configmap.yml"))
}

resource "kubernetes_manifest" "deployment" {
  manifest = yamldecode(file("${path.module}/../files/deployment.yml"))
}

resource "kubernetes_manifest" "pvc" {
  manifest = yamldecode(file("${path.module}/../files/pvc.yml"))
}

resource "kubernetes_manifest" "service" {
  manifest = yamldecode(file("${path.module}/../files/service.yml"))
}
