variable "files" {
  description = "List of files to be create into github repo"
  default = [
    "Namespace.tf",
    "Deployment.tf",
    "Service.tf",
    "Ingrees.tf",
    "provider.tf",
    "terraform.tfvars",
    "github/provider.tf",
    "github/repo.tf",
    "github/variables.tf"
  ]
}