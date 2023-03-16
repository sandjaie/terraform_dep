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
| <a name="input_connectivity_type"></a> [connectivity\_type](#input\_connectivity\_type) | Connectivity type for the gateway. Valid values are private and public | `string` | `"public"` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Cost center to which the resource is tagged under | `string` | n/a | yes |
| <a name="input_elastic_ip"></a> [elastic\_ip](#input\_elastic\_ip) | Elastic IP for the NAT gaeway | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment. | `string` | n/a | yes |
| <a name="input_groupprefix"></a> [groupprefix](#input\_groupprefix) | Prefix added to the name of the nat. e.g Public or Private | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID where the NAT needs to be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_gw_id"></a> [nat\_gw\_id](#output\_nat\_gw\_id) | n/a |
| <a name="output_nat_gw_ids"></a> [nat\_gw\_ids](#output\_nat\_gw\_ids) | n/a |
| <a name="output_nat_gw_network_interface_id"></a> [nat\_gw\_network\_interface\_id](#output\_nat\_gw\_network\_interface\_id) | n/a |
| <a name="output_nat_gw_private_ip"></a> [nat\_gw\_private\_ip](#output\_nat\_gw\_private\_ip) | n/a |
| <a name="output_nat_gw_public_ip"></a> [nat\_gw\_public\_ip](#output\_nat\_gw\_public\_ip) | n/a |
| <a name="output_nat_gw_subnet_ids"></a> [nat\_gw\_subnet\_ids](#output\_nat\_gw\_subnet\_ids) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
