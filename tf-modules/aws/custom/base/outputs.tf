output "vpc_id" {
  value = module.vpc.vpc_id
}

output "routing_table_id" {
  value = module.vpc.route_table_id
}

output "subnet_ids" {
  value = module.subnet.subnet_ids
}
