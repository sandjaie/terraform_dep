output "nginx_loadbalancer_status" {
  value = var.create_loadbalancer ? kubernetes_service.nginx_loadbalancer[0].status : null
}

output "nginx_nodeport_status" {
  value = var.create_loadbalancer ? null : kubernetes_service.nginx_nodeport[0].status
}
