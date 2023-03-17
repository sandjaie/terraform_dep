# nginx

### Deploys nginx

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.50.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.6.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.50.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.6.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_deployment.nginx](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_service.nginx](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Boolean set to create the namespace | `bool` | `false` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the eks cluster | `string` | n/a | yes |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the namespace to be created | `string` | n/a | yes |
| <a name="input_nginx_replicas_count"></a> [nginx\_replicas\_count](#input\_nginx\_replicas\_count) | Number of nginx replicas | `number` | `2` | no |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | Service type for the nginx deployment. E.g LoadBalancer, NodePort, ClusterIP | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nginx_loadbalancer_status"></a> [nginx\_loadbalancer\_status](#output\_nginx\_loadbalancer\_status) | n/a |
| <a name="output_nginx_nodeport_status"></a> [nginx\_nodeport\_status](#output\_nginx\_nodeport\_status) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
