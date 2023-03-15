# eks

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.50.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | ../../../native/containers/eks/cluster | n/a |
| <a name="module_node_group"></a> [node\_group](#module\_node\_group) | ../../../native/containers/eks/nodegroups | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_index"></a> [cluster\_index](#input\_cluster\_index) | Index of the cluster | `number` | `1` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name for EKS | `string` | `null` | no |
| <a name="input_cni_addon_version"></a> [cni\_addon\_version](#input\_cni\_addon\_version) | CNI plugin addon version | `string` | `null` | no |
| <a name="input_coredns_version"></a> [coredns\_version](#input\_coredns\_version) | coredns version - addon | `string` | `null` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | cost\_center that the vpc belongs too | `string` | n/a | yes |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | EKS version | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | environment that the vpv belongs too | `string` | n/a | yes |
| <a name="input_kube_proxy_version"></a> [kube\_proxy\_version](#input\_kube\_proxy\_version) | kube\_proxy version - addon | `string` | `null` | no |
| <a name="input_nodegroup"></a> [nodegroup](#input\_nodegroup) | Specifications of nodegroup | <pre>object({<br>    min_size         = number<br>    max_size         = number<br>    desired_size     = number<br>    root_volume_size = number<br>    instance_type    = string<br>  })</pre> | <pre>{<br>  "desired_size": 1,<br>  "instance_type": "m5.large",<br>  "max_size": 1,<br>  "min_size": 1,<br>  "root_volume_size": 20<br>}</pre> | no |
| <a name="input_nodegroup_name"></a> [nodegroup\_name](#input\_nodegroup\_name) | Name of the nodegroup | `string` | `"app"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Subnets in which the Mongodb Instances should be spun up | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | n/a |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | n/a |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | n/a |
| <a name="output_eks_nodegroup_role_arn"></a> [eks\_nodegroup\_role\_arn](#output\_eks\_nodegroup\_role\_arn) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
