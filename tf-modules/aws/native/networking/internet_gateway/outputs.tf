## Variables being exported for downstream consumption
output "igw_name" {
  value = flatten([aws_internet_gateway.igw.*.tags.Name])
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}

output "igw_arn" {
  value = aws_internet_gateway.igw.arn
}
