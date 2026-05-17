variable "kubeconfig_path" {
  description = "Path to the local Kubernetes kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "kube_context" {
  description = "Kubernetes context used by Terraform"
  type        = string
  default     = "minikube"
}

variable "namespace" {
  description = "Kubernetes namespace for the SRE Capstone application"
  type        = string
  default     = "sre-capstone"
}

variable "app_name" {
  description = "Application name used for Kubernetes labels and resources"
  type        = string
  default     = "sre-capstone-app"
}

variable "app_image" {
  description = "Docker image used by the application deployment"
  type        = string
  default     = "sre-capstone-app:latest"
}

variable "replicas" {
  description = "Initial number of application pods"
  type        = number
  default     = 2
}

variable "node_port" {
  description = "Local Kubernetes NodePort exposed for the application"
  type        = number
  default     = 30080
}

variable "hpa_min_replicas" {
  description = "Minimum number of pods managed by the HPA"
  type        = number
  default     = 2
}

variable "hpa_max_replicas" {
  description = "Maximum number of pods managed by the HPA"
  type        = number
  default     = 5
}

variable "hpa_cpu_utilization" {
  description = "Target average CPU utilization percentage for HPA scaling"
  type        = number
  default     = 60
}
