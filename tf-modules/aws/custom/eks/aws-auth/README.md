# aws-auth

Required to be applied after eks-module<br>

This module creates the aws-auth config map.
It creates the clusterroles and clusterrolebindings for IAM roles that need access to the cluster.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.25.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.6.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.25.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.6.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_cluster_role.eks_console_full_access](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role) | resource |
| [kubernetes_cluster_role.eks_read_only](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role) | resource |
| [kubernetes_cluster_role.eks_write_access](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role) | resource |
| [kubernetes_cluster_role_binding.eks_console_full_access_binding](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role_binding) | resource |
| [kubernetes_cluster_role_binding.eks_read_only_binding](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role_binding) | resource |
| [kubernetes_cluster_role_binding.eks_write_access](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role_binding) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_aws_auth_configmap"></a> [create\_aws\_auth\_configmap](#input\_create\_aws\_auth\_configmap) | Creates aws-auth configmap | `bool` | `true` | no |
| <a name="input_create_eks_full_access_cluser_role"></a> [create\_eks\_full\_access\_cluser\_role](#input\_create\_eks\_full\_access\_cluser\_role) | Creates eks\_full\_access cluster role in kube-system which is utilised by the deployrunner Note: uses cluster-admin by default | `bool` | `false` | no |
| <a name="input_create_eks_read_only_role"></a> [create\_eks\_read\_only\_role](#input\_create\_eks\_read\_only\_role) | Creates eks read only role | `bool` | `true` | no |
| <a name="input_create_eks_write_access_role"></a> [create\_eks\_write\_access\_role](#input\_create\_eks\_write\_access\_role) | Creates cluster role with write access | `bool` | `false` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the eks cluster | `string` | n/a | yes |
| <a name="input_eks_console_full_access_role_name"></a> [eks\_console\_full\_access\_role\_name](#input\_eks\_console\_full\_access\_role\_name) | Name of the eks\_console\_full\_access cluster role | `string` | `"eks-console-full-access"` | no |
| <a name="input_eks_read_only_name"></a> [eks\_read\_only\_name](#input\_eks\_read\_only\_name) | Name of the read\_only cluster role | `string` | `"eks-read-only"` | no |
| <a name="input_eks_write_access_name"></a> [eks\_write\_access\_name](#input\_eks\_write\_access\_name) | Name of the eks\_write\_access cluster role | `string` | `"eks-write-access"` | no |
| <a name="input_map_additional_aws_accounts"></a> [map\_additional\_aws\_accounts](#input\_map\_additional\_aws\_accounts) | Additional AWS account numbers to add to `config-map-aws-auth` ConfigMap | `list(string)` | `[]` | no |
| <a name="input_map_additional_iam_roles"></a> [map\_additional\_iam\_roles](#input\_map\_additional\_iam\_roles) | Additional IAM roles to add to `config-map-aws-auth` ConfigMap | <pre>list(object({<br>    rolearn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_map_additional_iam_users"></a> [map\_additional\_iam\_users](#input\_map\_additional\_iam\_users) | Additional IAM users to add to `config-map-aws-auth` ConfigMap | <pre>list(object({<br>    userarn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_workers_role_arns"></a> [workers\_role\_arns](#input\_workers\_role\_arns) | List of Role ARNs of the worker nodes | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_console_cluster_role"></a> [eks\_console\_cluster\_role](#output\_eks\_console\_cluster\_role) | n/a |
| <a name="output_eks_console_full_access_cluster_role_group"></a> [eks\_console\_full\_access\_cluster\_role\_group](#output\_eks\_console\_full\_access\_cluster\_role\_group) | n/a |
| <a name="output_eks_read_only_group_name"></a> [eks\_read\_only\_group\_name](#output\_eks\_read\_only\_group\_name) | n/a |
| <a name="output_eks_read_only_role"></a> [eks\_read\_only\_role](#output\_eks\_read\_only\_role) | n/a |
| <a name="output_eks_write_access_group_name"></a> [eks\_write\_access\_group\_name](#output\_eks\_write\_access\_group\_name) | n/a |
| <a name="output_eks_write_access_role"></a> [eks\_write\_access\_role](#output\_eks\_write\_access\_role) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
