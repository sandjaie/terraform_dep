output "vpc_id" {
  value = var.create_vpc_ipam ? element(aws_vpc.vpc_ipam.*.id, 0) : element(aws_vpc.vpc.*.id, 0)
}

output "vpc_name" {
  value = var.create_vpc_ipam ? element(aws_vpc.vpc_ipam.*.tags.Name, 0) : element(aws_vpc.vpc.*.tags.Name, 0)
}

output "vpc_cidr" {
  value = var.create_vpc_ipam ? element(aws_vpc.vpc_ipam.*.cidr_block, 0) : element(aws_vpc.vpc.*.cidr_block, 0)
}

output "route_table_id" {
  value = var.create_vpc_ipam ? element(aws_vpc.vpc_ipam.*.main_route_table_id, 0) : element(aws_vpc.vpc.*.main_route_table_id, 0)
}

output "default_network_acl_id" {
  value = var.create_vpc_ipam ? element(aws_vpc.vpc_ipam.*.default_network_acl_id, 0) : element(aws_vpc.vpc.*.default_network_acl_id, 0)
}
