# terraform-gke

Install Terraform
Install kubectl
Install google-cloud-sdk

# From the GCP console

* Create a Project
* Create a service account for terraform
* Add the Roles
* * Kubernetes Engine Admin
* * Storage Admin
* * Service Account User
* export service account key as 'account.json'

# Enable the Kubernetes Engine API

# Create storage bucket

* update google.tf with storage bucket name

* Enable Versioning  
````
export BUCKET_ID=bryanlabs
gsutil versioning set on gs://${BUCKET_ID}
````
run 

````gcloud init````  

Follow the prompts to select your project  
run deploy.sh

