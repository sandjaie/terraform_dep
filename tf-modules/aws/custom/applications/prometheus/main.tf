resource "kubernetes_deployment" "prometheus" {
  metadata {
    name      = "prometheus"
    namespace = var.namespace_name
  }
  spec {
    replicas = var.prometheus_replicas_count
    selector {
      match_labels = {
        app = "prometheus-deployment"
      }
    }
    template {
      metadata {
        labels = {
          app = "prometheus-deployment"
        }
      }
      spec {
        container {
          name  = "prometheus"
          image = "prometheus"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "prometheus_nodeport" {
  count = var.create_loadbalancer ? 0 : 1
  metadata {
    name      = "prometheus"
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "prometheus-deployment"
    }
    type = "NodePort"
    port {
      port      = 80
      node_port = 30080
      name      = "http"
    }
  }
}

resource "kubernetes_service" "prometheus_loadbalancer" {
  count = var.create_loadbalancer ? 1 : 0
  metadata {
    name      = "prometheus"
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "prometheus-deployment"
    }
    type = "LoadBalancer"
    port {
      port = 80
      name = "http"
    }
  }
}
