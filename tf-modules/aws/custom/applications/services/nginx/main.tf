module "namespace" {
  source = "../../../../native/containers/eks/namespace"

  namespace_name   = "services"
  eks_cluster_name = var.eks_cluster_name
  oidc_id          = var.eks_oidc_id
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx"
    namespace = module.namespace.namespace_name
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
    namespace = module.namespace.namespace_name
  }
  spec {
    selector = {
      app = "nginx-deployment"
    }
    type = "LoadBalancer"
    port {
      port        = 80
      target_port = 80
    }
  }
}
