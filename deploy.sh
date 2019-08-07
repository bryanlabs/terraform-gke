#!/bin/bash
export ENVIRONMENT=production
terraform workspace new ${ENVIRONMENT}
export PROJECT=gke-from-scratch
export SERVICE_ACCOUNT=terraform

terraform init
terraform apply -var-file=${ENVIRONMENT}.tfvars

gcloud beta container clusters get-credentials gke-from-scratch-249100-cluster --region us-east1 --project gke-from-scratch-249100
