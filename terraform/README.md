# Local Kubernetes Infrastructure

This Terraform configuration deploys the SRE Capstone application to a local Kubernetes cluster without AWS or paid cloud resources.

## Prerequisites

- Docker
- Minikube
- kubectl
- Terraform

## Run locally

Start Minikube:

```powershell
minikube start
minikube addons enable metrics-server
```

Build the application image inside Minikube:

```powershell
minikube image build -t sre-capstone-app:latest ../app
```

Apply the infrastructure:

```powershell
terraform init
terraform plan
terraform apply
```

Check the deployed resources:

```powershell
kubectl get all -n sre-capstone
kubectl get hpa -n sre-capstone
```

Open the application:

```powershell
minikube service sre-capstone-app -n sre-capstone
```

## Autoscaling demo

Generate traffic against the service URL and watch HPA scale pods:

```powershell
kubectl get hpa -n sre-capstone -w
kubectl get pods -n sre-capstone -w
```
