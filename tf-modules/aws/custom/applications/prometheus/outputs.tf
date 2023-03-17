output "nginx_loadbalancer_status" {
  value = var.create_loadbalancer ? kubernetes_service.prometheus_loadbalancer[0].status : null
}

output "nginx_nodeport_status" {
  value = var.create_loadbalancer ? null : kubernetes_service.prometheus_nodeport[0].status
}
