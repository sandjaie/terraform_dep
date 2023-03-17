# prometheus

### Deploys prometheus and grafana components using Helm charts

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.50.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.6.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.50.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.grafana](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.prometheus](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the eks cluster | `string` | n/a | yes |
| <a name="input_helm_chart_grafana_name"></a> [helm\_chart\_grafana\_name](#input\_helm\_chart\_grafana\_name) | Grafana Helm chart name to be installed | `string` | `"grafana"` | no |
| <a name="input_helm_chart_grafana_release_name"></a> [helm\_chart\_grafana\_release\_name](#input\_helm\_chart\_grafana\_release\_name) | Grafana Helm release name | `string` | `"grafana"` | no |
| <a name="input_helm_chart_grafana_repo"></a> [helm\_chart\_grafana\_repo](#input\_helm\_chart\_grafana\_repo) | Grafana repository name. | `string` | `"https://grafana.github.io/helm-charts"` | no |
| <a name="input_helm_chart_grafana_version"></a> [helm\_chart\_grafana\_version](#input\_helm\_chart\_grafana\_version) | Grafana Helm chart version. | `string` | `"6.52.0"` | no |
| <a name="input_helm_chart_prometheus_name"></a> [helm\_chart\_prometheus\_name](#input\_helm\_chart\_prometheus\_name) | Prometheus Helm chart name to be installed | `string` | `"prometheus"` | no |
| <a name="input_helm_chart_prometheus_release_name"></a> [helm\_chart\_prometheus\_release\_name](#input\_helm\_chart\_prometheus\_release\_name) | Prometheus Helm release name | `string` | `"prometheus"` | no |
| <a name="input_helm_chart_prometheus_repo"></a> [helm\_chart\_prometheus\_repo](#input\_helm\_chart\_prometheus\_repo) | Prometheus repository name. | `string` | `"https://prometheus-community.github.io/helm-charts"` | no |
| <a name="input_helm_chart_prometheus_version"></a> [helm\_chart\_prometheus\_version](#input\_helm\_chart\_prometheus\_version) | Prometheus Helm chart version. | `string` | `"15.12.0"` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the namespace to be created | `string` | n/a | yes |
| <a name="input_settings_grafana"></a> [settings\_grafana](#input\_settings\_grafana) | Additional settings which will be passed to Grafana Helm chart values. | `map` | <pre>{<br>  "persistence": {<br>    "enabled": true,<br>    "storageClassName": "gp2"<br>  }<br>}</pre> | no |
| <a name="input_settings_prometheus"></a> [settings\_prometheus](#input\_settings\_prometheus) | Additional settings which will be passed to Prometheus Helm chart values. | `map` | <pre>{<br>  "alertmanager": {<br>    "persistentVolume": {<br>      "storageClass": "gp2"<br>    }<br>  },<br>  "server": {<br>    "persistentVolume": {<br>      "storageClass": "gp2"<br>    }<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
