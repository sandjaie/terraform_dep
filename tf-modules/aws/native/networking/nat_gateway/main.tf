#resource "aws_nat_gateway" "nat_gw" {
#  count = length(var.availability_zones)
#
#  allocation_id     = element(var.elastic_ips, count.index)
#  subnet_id         = element(var.subnet_ids, count.index)
#  connectivity_type = var.connectivity_type
#
#  tags = merge(local.tags, {
#    Name = "${var.environment}-${var.groupprefix}-${element(var.availability_zones, count.index)}-nat"
#  })
#}

resource "aws_nat_gateway" "nat_gw" {

  allocation_id     = var.elastic_ip
  subnet_id         = var.subnet_id
  connectivity_type = var.connectivity_type

  tags = merge(local.tags, {
    Name = "${var.environment}-${var.groupprefix}-nat"
  })
}
