# nat_gw

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.27.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.27.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_nat_gateway.nat_gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability\_zones of the region | `list(string)` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region. | `string` | n/a | yes |
| <a name="input_connectivity_type"></a> [connectivity\_type](#input\_connectivity\_type) | Connectivity type for the gateway. Valid values are private and public | `string` | `"public"` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Cost center to which the resource is tagged under | `string` | n/a | yes |
| <a name="input_elastic_ips"></a> [elastic\_ips](#input\_elastic\_ips) | Elastic IPs for the NAT gaeway | `list(string)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment. | `string` | n/a | yes |
| <a name="input_groupprefix"></a> [groupprefix](#input\_groupprefix) | Prefix added to the name of the nat. e.g Public or Private | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | list of subnet ids | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_gw_id"></a> [nat\_gw\_id](#output\_nat\_gw\_id) | n/a |
| <a name="output_nat_gw_network_interface_id"></a> [nat\_gw\_network\_interface\_id](#output\_nat\_gw\_network\_interface\_id) | n/a |
| <a name="output_nat_gw_private_ip"></a> [nat\_gw\_private\_ip](#output\_nat\_gw\_private\_ip) | n/a |
| <a name="output_nat_gw_public_ip"></a> [nat\_gw\_public\_ip](#output\_nat\_gw\_public\_ip) | n/a |
| <a name="output_nat_gw_subnet_ids"></a> [nat\_gw\_subnet\_ids](#output\_nat\_gw\_subnet\_ids) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
