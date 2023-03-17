resource "helm_release" "prometheus" {
  name       = var.helm_chart_prometheus_name
  chart      = var.helm_chart_prometheus_release_name
  repository = var.helm_chart_prometheus_repo
  version    = var.helm_chart_prometheus_version
  namespace  = var.namespace_name

  values = [
    yamlencode(var.settings_prometheus)
  ]
}

resource "helm_release" "grafana" {
  name       = var.helm_chart_grafana_name
  chart      = var.helm_chart_grafana_release_name
  repository = var.helm_chart_grafana_repo
  version    = var.helm_chart_grafana_version
  namespace  = var.namespace_name

  #  set {
  #    name  = "adminPassword"
  #    value = "admin"
  #  }

  values = [
    file("${path.module}/files/grafana.yaml"),
    yamlencode(var.settings_grafana)
  ]
}
