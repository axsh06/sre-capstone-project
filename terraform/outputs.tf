output "namespace" {
  description = "Kubernetes namespace where the application is deployed"
  value       = kubernetes_namespace.app.metadata[0].name
}

output "service_name" {
  description = "Kubernetes service name"
  value       = kubernetes_service.app.metadata[0].name
}

output "node_port" {
  description = "NodePort exposed by the local Kubernetes service"
  value       = kubernetes_service.app.spec[0].port[0].node_port
}

output "local_app_url" {
  description = "Application URL for Minikube local access"
  value       = "http://$(minikube ip):${kubernetes_service.app.spec[0].port[0].node_port}"
}

output "hpa_name" {
  description = "Horizontal Pod Autoscaler name"
  value       = kubernetes_horizontal_pod_autoscaler_v2.app.metadata[0].name
}
