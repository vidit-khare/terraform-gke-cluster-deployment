# Terraform GKE Cluster Deployment 

This repository contains Terraform modules for managing Google Kubernetes Engine. The repository contains modules for deploying `gke-cluster`, `gke-node-pool` and `google-service-account`. The folders are organized as follows:

## modules

### 1. Service Account (`service_account`)

The `service_account` module provisions a GCP service account. It includes the following files:

- `main.tf`: Defines the service account resource.
- `variables.tf`: Contains input variables for customization.
- `outputs.tf`: Specifies the outputs from the service account creation.

### 2. GKE Cluster (`gke_cluster`)

The `gke_cluster` module sets up a Google Kubernetes Engine (GKE) cluster. It includes the following files:

- `main.tf`: Configures the GKE cluster.
- `variables.tf`: Defines input variables for customization.
- `outputs.tf`: Provides relevant outputs after cluster creation.

### 3. Node Pool (`gke_node_pool`)

The `gke_node_pool` module creates a GKE node pool. It consists of the following files:

- `main.tf`: Sets up the GKE node pool.
- `variables.tf`: Specifies input variables.
- `outputs.tf`: Defines relevant outputs.

## Root Module

The root module organizes the environment-specific configurations:

- `environments`: This folder used to host different environment specific data
  - `dev/`: Development environment
    - `main.tf`: Environment-specific settings
    - `variables.tf`: Specifies input variables.
    - `variables.tfvars`: Used to provide values of variables.    
    - `provider.tf`: GCP provider configuration
    - `backend.tf`: Remote Backend configuration
    - `versions.tf`: Terraform configuration

  - Simailarly other environments can be created for `qa`, `prod` etc.

## Steps to Run, Validate, and Test

1. **Prerequisites**:
   - Install Terraform on your local machine (download from the official Terraform website).
   - Create a service account and assign proper iam policies to create service account, gke cluster etc.

2. **Repository Setup**:
   - Clone your Terraform repository locally using `git clone`.
   - Navigate to the root directory of your repository.

3. **Environment Configuration**:
   - Inside each environment folder (e.g., `dev/`, `qa/`, `prod/`), create a `terraform.tfvars` file with environment-specific variables (e.g., project ID, region).
   - If possible you can also create environment specific workspace using below command.
   
   ```
   terraform workspace new <workspace_name>
   ```

4. **Initialize Terraform**:
   - Run `terraform init` in the root directory to initialize Terraform (downloads plugins and sets up the backend).
   - Configure the backend (if using a remote backend like Google Cloud Storage).

5. **Plan and Apply**:
   - Run `terraform plan -var-file=dev/variables.tfvars` (replace `dev` with the appropriate environment) to preview changes.
   - Review the plan output.
   - Apply changes using `terraform apply -var-file=dev/variables.tfvars`.

6. **Validation and Testing**:
   - Validate resources created in your GCP console.
   - Deploy applications or services dependent on Terraform-managed resources.
   - Write automated tests using tools like `kitchen-terraform` or `terratest`.

7. **Destroy (Cleanup)**:
   - When done testing, run `terraform destroy -var-file=dev/variables.tfvars` to remove resources (be cautious in production environments).

## Troubleshooting Common Issues

If you encounter any errors or issues while using Terraform, refer to the following troubleshooting tips:

- Check for syntax errors in your .tf files.
- Verify that you have the correct provider and resource configurations.
- Ensure that you have the required permissions to perform Terraform operations.
- Check for any outdated or incompatible plugins.
- Review the Terraform documentation and community forums for additional help.

## Contributing to the Repository

If you would like to contribute to this repository, please follow these guidelines:

- Fork the repository and create a new branch for your changes.
- Make your changes and commit them to your branch.
- Open a pull request to merge your changes into the main branch.
- Be sure to follow the coding standards and best practices for Terraform.
- Ensure that your changes are well-documented and tested.

## License Information

This repository is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgments

This repository was inspired by the following resources:

- [Terraform Documentation](https://learn.hashicorp.com/collections/terraform/terraform-get-started)
- [Terraform Best Practices](https://www.terraform-best-practices.com/)

## Contact Information

If you have any questions or need assistance, please contact the repository owner at:

- [GitHub](https://github.com/vidit-khare)
- [Email](mailto:vidit.khare.connect@gmail.com)

