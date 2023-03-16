output "vpc_id" {
  value = local.vpc_id
}

output "routing_table_id" {
  value = module.vpc.route_table_id
}

output "private_subnet_ids" {
  value = local.private_subnet_ids
}

output "public_subnet_ids" {
  value = local.public_subnet_ids
}
