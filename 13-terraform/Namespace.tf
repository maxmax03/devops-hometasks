variable "namespace_name" {}
resource "kubernetes_namespace_v1" "wcglab-space" {
  metadata {
    name = var.namespace_name
  }
}