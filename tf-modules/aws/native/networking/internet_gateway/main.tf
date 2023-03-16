# Define Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = merge(local.tags, {
    Name = "${var.vpc_name}-igw"
  })
}
