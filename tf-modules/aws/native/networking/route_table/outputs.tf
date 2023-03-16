## Variables being exported for downstream consumption
output "rt_table_id" {
  value = aws_route_table.routing_table.id
}
