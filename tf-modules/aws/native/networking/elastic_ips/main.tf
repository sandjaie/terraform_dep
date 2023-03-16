resource "aws_eip" "nat-eip" {
  count = var.number_of_ips
  vpc   = true

  tags = merge(local.tags, {
    Name = "${var.environment}-elasticIP-${count.index + 1}"
  })
}
