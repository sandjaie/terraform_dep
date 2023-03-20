# cluster

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

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_eks_addon.ebs_csi_driver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.eks_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.eks_coredns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_addon.eks_kube_proxy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_iam_role.eks_cluster_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_cluster_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_cni_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_ebs_csi_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_service_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.eks_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_keyname"></a> [aws\_keyname](#input\_aws\_keyname) | Name of the keypair to use for the VM | `string` | `null` | no |
| <a name="input_cluster_index"></a> [cluster\_index](#input\_cluster\_index) | Index of the cluster | `number` | `1` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name for EKS | `string` | `null` | no |
| <a name="input_cni_addon_version"></a> [cni\_addon\_version](#input\_cni\_addon\_version) | CNI plugin addon version | `string` | `null` | no |
| <a name="input_coredns_version"></a> [coredns\_version](#input\_coredns\_version) | coredns version - addon | `string` | `null` | no |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Cost center to which the resource is tagged under | `string` | n/a | yes |
| <a name="input_ebs_csi_driver_version"></a> [ebs\_csi\_driver\_version](#input\_ebs\_csi\_driver\_version) | ebs\_csi\_driver\_version - addon | `string` | `null` | no |
| <a name="input_eks_service_ipv4_cidr"></a> [eks\_service\_ipv4\_cidr](#input\_eks\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes pod and service IP addresses from. | `string` | `"10.110.0.0/23"` | no |
| <a name="input_eks_version"></a> [eks\_version](#input\_eks\_version) | EKS version | `string` | n/a | yes |
| <a name="input_enable_cluster_cw_logs"></a> [enable\_cluster\_cw\_logs](#input\_enable\_cluster\_cw\_logs) | Boolean to enable EKS cluster logs | `bool` | `false` | no |
| <a name="input_endpoint_private_access"></a> [endpoint\_private\_access](#input\_endpoint\_private\_access) | Whether the Amazon EKS private API server endpoint is enabled. | `bool` | `false` | no |
| <a name="input_endpoint_public_access"></a> [endpoint\_public\_access](#input\_endpoint\_public\_access) | Whether the Amazon EKS public API server endpoint is enabled. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment that the VPC belongs to | `string` | n/a | yes |
| <a name="input_kube_proxy_version"></a> [kube\_proxy\_version](#input\_kube\_proxy\_version) | kube\_proxy version - addon | `string` | `null` | no |
| <a name="input_resolve_conflicts"></a> [resolve\_conflicts](#input\_resolve\_conflicts) | Define how to resolve parameter value conflicts when when applying version updates to the add-on | `string` | `"OVERWRITE"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | Subnets in which the Mongodb Instances should be spun up | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | n/a |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | n/a |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
