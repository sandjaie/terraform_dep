resource "aws_nat_gateway" "nat_gw" {
  count = length(var.subnet_ids)

  allocation_id = var.elastic_ip
  subnet_id     = element(var.subnet_ids, count.index)

  tags = merge(local.tags, {
    Name = "${var.environment}-${var.groupprefix}-nat"
  })
}
