output "namespaces_id" {
  description = "Map of id values across all namespaces, keyed the same as var.namespaces except keys with no id are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespaces_custom_metadata" {
  description = "Map of custom_metadata values across all namespaces, keyed the same as var.namespaces except keys with no custom_metadata are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.custom_metadata if v.custom_metadata != null && length(v.custom_metadata) > 0 }
}
output "namespaces_namespace" {
  description = "Map of namespace values across all namespaces, keyed the same as var.namespaces except keys with no namespace are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "namespaces_namespace_id" {
  description = "Map of namespace_id values across all namespaces, keyed the same as var.namespaces except keys with no namespace_id are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "namespaces_path" {
  description = "Map of path values across all namespaces, keyed the same as var.namespaces except keys with no path are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.path if v.path != null && length(v.path) > 0 }
}
output "namespaces_path_fq" {
  description = "Map of path_fq values across all namespaces, keyed the same as var.namespaces except keys with no path_fq are omitted"
  value       = { for k, v in vault_namespace.namespaces : k => v.path_fq if v.path_fq != null && length(v.path_fq) > 0 }
}

