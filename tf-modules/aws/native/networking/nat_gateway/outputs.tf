output "nat_gw_id" {
  value = aws_nat_gateway.nat_gw.*.id
}

output "nat_gw_private_ip" {
  value = aws_nat_gateway.nat_gw.*.private_ip
}

output "nat_gw_public_ip" {
  value = aws_nat_gateway.nat_gw.*.public_ip
}

output "nat_gw_subnet_ids" {
  value = aws_nat_gateway.nat_gw.*.subnet_id
}

output "nat_gw_network_interface_id" {
  value = aws_nat_gateway.nat_gw.*.network_interface_id
}
