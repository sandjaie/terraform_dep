resource "aws_eip" "nat-eip" {
  count = length(var.availability_zones)
  vpc   = true

  tags = merge(local.tags, {
    Name = "${var.environment}-elasticIP-${count.index + 1}"
  })
}
