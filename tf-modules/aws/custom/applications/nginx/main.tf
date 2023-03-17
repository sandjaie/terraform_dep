resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = var.namespace_name
  }
  spec {
    replicas = var.nginx_replicas_count
    selector {
      match_labels = {
        app = "nginx-deployment"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx-deployment"
        }
      }
      spec {
        container {
          name  = "nginx"
          image = "nginx"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name      = "nginx"
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "nginx-deployment"
    }
    type = var.service_type
    port {
      port = 80
      name = "http"
    }
  }
}
