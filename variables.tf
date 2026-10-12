variable "namespaces" {
  description = <<EOT
Map of namespaces, attributes below
Required:
    - path
Optional:
    - custom_metadata
    - namespace
    - path_fq
EOT

  type = map(object({
    path            = string
    custom_metadata = optional(map(string))
    namespace       = optional(string)
    path_fq         = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

