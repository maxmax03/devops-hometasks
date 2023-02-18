terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.18.0"
    }
  }
  backend "kubernetes" {
    config_path   = "~/.kube/config"
    secret_suffix = "tfstate"
    namespace     = "kube-system"
  }
}

provider "kubernetes" {
  host = "https://192.168.49.2:8443"

  client_key             = file("/home/vagrant/.minikube/profiles/minikube/client.key")
  client_certificate     = file("/home/vagrant/.minikube/profiles/minikube/client.crt")
  cluster_ca_certificate = file("/home/vagrant/.minikube/ca.crt")
}