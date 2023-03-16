output "vpc_id" {
  value = local.vpc_id
}

output "vpc_name" {
  value = module.vpc.vpc_name
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

output "vpc_default_network_acl_id" {
  value = module.vpc.default_network_acl_id
}

output "vpc_default_route_table_id" {
  value = module.vpc.route_table_id
}

output "elastic_ips" {
  value = module.elastic_ips.elastic_ips
}

output "internet_gateway_id" {
  value = module.internet_gateway.igw_id
}

output "internet_gateway_name" {
  value = module.internet_gateway.igw_name
}

output "nat_gw_ids" {
  value = module.nat_gateway.nat_gw_id
}

output "nat_gw_private_ips" {
  value = module.nat_gateway.nat_gw_private_ip
}

output "nat_gw_public_ips" {
  value = module.nat_gateway.nat_gw_public_ip
}

output "nat_gw_subnet_ids" {
  value = module.nat_gateway.nat_gw_subnet_ids
}

output "nat_gw_network_interface_ids" {
  value = module.nat_gateway.nat_gw_network_interface_id
}

output "public_route_table_id" {
  value = module.public_route_table.rt_table_id
}

output "private_route_table_id" {
  value = module.private_route_table.rt_table_id
}

output "internet_gateway_route_table_id" {
  value = aws_route.internet_gateway.route_table_id
}

output "internet_gateway_route_id" {
  value = aws_route.internet_gateway.*.id
}

#output "nat_gateway_route_table_ids" {
#  value = aws_route.nat_gateway.*.route_table_id
#}
#
#output "nat_gateway_route_ids" {
#  value = aws_route.nat_gateway.*.id
#}
