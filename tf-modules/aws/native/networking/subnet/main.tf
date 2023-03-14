resource "aws_subnet" "subnet" {
  count = length(var.availability_zones)

  vpc_id                  = var.vpc_id
  cidr_block              = tolist(var.cidr_blocks)[count.index]
  map_public_ip_on_launch = "false"
  availability_zone       = element(var.availability_zones, count.index)

  tags = merge(var.tags, local.tags, {
    Name = "${var.environment}-${var.subnet_type}-subnet-${count.index + 1}"
    AZ   = element(var.availability_zones, count.index)
  })
}
