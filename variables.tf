variable "api_management_product_lookup" {
  description = <<EOT
Map of api_management_product_lookup, attributes below
Required:
    - api_management_name
    - product_id
    - resource_group_name
EOT

  type = map(object({
    api_management_name = string
    product_id          = string
    resource_group_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_product_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

