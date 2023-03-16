resource "aws_nat_gateway" "nat_gw" {
  count = length(var.subnet_ids)

  allocation_id     = element(var.elastic_ips, count.index)
  subnet_id         = element(var.subnet_ids, count.index)
  connectivity_type = var.connectivity_type

  tags = merge(local.tags, {
    Name = "${var.environment}-${var.groupprefix}-nat"
  })
}
