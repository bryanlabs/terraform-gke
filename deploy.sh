#!/bin/bash
set -x

# This should match your ProjectID, not ProjectName
export PROJECT=terraform-gke-249103	

# The name of the service account you created.
export SERVICE_ACCOUNT=terraform

terraform init
terraform apply -var-file=production.tfvars

# Run this to create a kube config

gcloud beta container clusters get-credentials ${PROJECT}-cluster --region us-east1 --project ${PROJECT}
