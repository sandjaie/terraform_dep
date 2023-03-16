output "elastic_ips" {
  value = aws_eip.nat-eip.*.id
}
