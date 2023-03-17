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

resource "kubernetes_service" "nginx_nodeport" {
  count = var.create_loadbalancer ? 0 : 1
  metadata {
    name      = "nginx"
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "nginx-deployment"
    }
    type = "NodePort"
    port {
      port      = 80
      node_port = 30080
      name      = "http"
    }
  }
}

resource "kubernetes_service" "nginx_loadbalancer" {
  count = var.create_loadbalancer ? 1 : 0
  metadata {
    name      = "nginx"
    namespace = var.namespace_name
  }
  spec {
    selector = {
      app = "nginx-deployment"
    }
    type = "LoadBalancer"
    port {
      port = 80
      name = "http"
    }
  }
}
