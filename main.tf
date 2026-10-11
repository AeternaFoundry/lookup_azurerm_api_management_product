data "azurerm_api_management_product" "api_management_product_lookup" {
  for_each = var.api_management_product_lookup

  api_management_name = each.value.api_management_name
  product_id          = each.value.product_id
  resource_group_name = each.value.resource_group_name
}

