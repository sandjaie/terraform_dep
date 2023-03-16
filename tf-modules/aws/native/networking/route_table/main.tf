resource "aws_route_table" "routing_table" {
  vpc_id = var.vpc_id

  tags = merge(local.tags, {
    Name = "${var.environment}-${var.prefix}-rt"
  })
}
