variable "eks_cluster_name" {
  description = "Name of the eks cluster"
  type        = string
}

variable "namespace_name" {
  description = "Name of the namespace to be created"
  type        = string
}

variable "helm_chart_prometheus_release_name" {
  type        = string
  default     = "prometheus"
  description = "Prometheus Helm release name"
}

variable "helm_chart_prometheus_name" {
  type        = string
  default     = "prometheus"
  description = "Prometheus Helm chart name to be installed"
}

variable "helm_chart_prometheus_version" {
  type        = string
  default     = "19.7.0"
  description = "Prometheus Helm chart version."
}

variable "helm_chart_prometheus_repo" {
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
  description = "Prometheus repository name."
}

variable "settings_prometheus" {
  default = {
    alertmanager = {
      persistentVolume = {
        storageClass = "gp2"
      }
    }
    server = {
      persistentVolume = {
        storageClass = "gp2"
      }
    }
  }
  description = "Additional settings which will be passed to Prometheus Helm chart values."
}

variable "settings_grafana" {
  default = {
    persistence = {
      enabled          = true
      storageClassName = "gp2"
    }
  }
  description = "Additional settings which will be passed to Grafana Helm chart values."
}

variable "helm_chart_grafana_release_name" {
  type        = string
  default     = "grafana"
  description = "Grafana Helm release name"
}

variable "helm_chart_grafana_name" {
  type        = string
  default     = "grafana"
  description = "Grafana Helm chart name to be installed"
}

variable "helm_chart_grafana_version" {
  type        = string
  default     = "6.52.0"
  description = "Grafana Helm chart version."
}

variable "helm_chart_grafana_repo" {
  type        = string
  default     = "https://grafana.github.io/helm-charts"
  description = "Grafana repository name."
}
