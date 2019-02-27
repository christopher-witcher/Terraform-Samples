#!/bin/sh
echo "Starting First Deployment"
echo "Initializing Terraform"
terraform init

echo "Testing Terraform Deployment"
az login --service-principal -u ${ARM_CLIENT_ID} -p ${ARM_CLIENT_SECRET} --tenant ${ARM_TENANT_ID} --allow-no-subscription

#terraform plan

echo "Completing Deployment"
terraform apply -var-file="network.tfvars"

echo "End of Deployment"