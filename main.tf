resource "vault_namespace" "namespaces" {
  for_each = var.namespaces

  path            = each.value.path
  custom_metadata = each.value.custom_metadata
  namespace       = each.value.namespace
  path_fq         = each.value.path_fq
}

