output "api_management_product_lookup_id" {
  description = "Map of id values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_product_lookup_api_management_name" {
  description = "Map of api_management_name values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_product_lookup_approval_required" {
  description = "Map of approval_required values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.approval_required if v.approval_required != null }
}
output "api_management_product_lookup_description" {
  description = "Map of description values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_management_product_lookup_display_name" {
  description = "Map of display_name values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_product_lookup_product_id" {
  description = "Map of product_id values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.product_id if v.product_id != null && length(v.product_id) > 0 }
}
output "api_management_product_lookup_published" {
  description = "Map of published values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.published if v.published != null }
}
output "api_management_product_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_product_lookup_subscription_required" {
  description = "Map of subscription_required values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.subscription_required if v.subscription_required != null }
}
output "api_management_product_lookup_subscriptions_limit" {
  description = "Map of subscriptions_limit values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.subscriptions_limit if v.subscriptions_limit != null }
}
output "api_management_product_lookup_terms" {
  description = "Map of terms values across all api_management_product_lookup, keyed the same as var.api_management_product_lookup"
  value       = { for k, v in data.azurerm_api_management_product.api_management_product_lookup : k => v.terms if v.terms != null && length(v.terms) > 0 }
}

