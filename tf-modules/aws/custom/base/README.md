# base

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.50.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_elastic_ips"></a> [elastic\_ips](#module\_elastic\_ips) | ../../native/networking/elastic_ips | n/a |
| <a name="module_internet_gateway"></a> [internet\_gateway](#module\_internet\_gateway) | ../../native/networking/internet_gateway | n/a |
| <a name="module_nat_gateway"></a> [nat\_gateway](#module\_nat\_gateway) | ../../native/networking/nat_gateway | n/a |
| <a name="module_private_route_table"></a> [private\_route\_table](#module\_private\_route\_table) | ../../../aws/native/networking/route_table | n/a |
| <a name="module_private_subnets"></a> [private\_subnets](#module\_private\_subnets) | ../../native/networking/subnet | n/a |
| <a name="module_public_route_table"></a> [public\_route\_table](#module\_public\_route\_table) | ../../native/networking/route_table | n/a |
| <a name="module_public_subnets"></a> [public\_subnets](#module\_public\_subnets) | ../../native/networking/subnet | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../native/networking/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_route.internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table_association.private_subnets_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnets_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | AZ for the subnet. | `list(string)` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region i.e us-west-2, us-east-1 | `string` | n/a | yes |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | cost\_center that the vpc belongs too | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | environment that the vpv belongs too | `string` | n/a | yes |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | The IPv4 CIDR block for the private subnets. | `list(string)` | n/a | yes |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | The IPv4 CIDR block for the public subnets. | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4\_netmask\_length | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the vpc. If left null, the environment name will be the vpc name | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | n/a |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | n/a |
| <a name="output_routing_table_id"></a> [routing\_table\_id](#output\_routing\_table\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
