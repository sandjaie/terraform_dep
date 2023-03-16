output "elastic_ips" {
  value = aws_eip.eip.*.id
}
