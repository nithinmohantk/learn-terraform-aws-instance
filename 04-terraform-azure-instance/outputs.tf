output "cosmos-db-id" {
  value = "${azurerm_cosmosdb_account.example.id}"
}

output "cosmos-db-endpoint" {
  value = "${azurerm_cosmosdb_account.example.endpoint}"
}

output "cosmos-db-endpoints_read" {
  value = "${azurerm_cosmosdb_account.example.read_endpoints}"
}

output "cosmos-db-endpoints_write" {
  value = "${azurerm_cosmosdb_account.example.write_endpoints}"
}

output "cosmos-db-primary_master_key" {
  value = "${azurerm_cosmosdb_account.example.primary_master_key}"
}

output "cosmos-db-secondary_master_key" {
  value = "${azurerm_cosmosdb_account.example.secondary_master_key}"
}

output "sql_server_fqdn" {
  value = "${azurerm_sql_server.example.fully_qualified_domain_name}"
}

output "database_name" {
  value = "${azurerm_sql_database.example.name}"
}

output "app_service_name" {
  value = "${azurerm_app_service.main.name}"
}

output "app_service_default_hostname" {
  value = "https://${azurerm_app_service.main.default_site_hostname}"
}


output "service_id" {
  description = "The ID of the API Management Service created"
  value       = azurerm_api_management.apim_service.id
}

output "gateway_url" {
  description = "The URL of the Gateway for the API Management Service"
  value       = azurerm_api_management.apim_service.gateway_url
}

output "service_public_ip_addresses" {
  description = "The Public IP addresses of the API Management Service"
  value       = azurerm_api_management.apim_service.public_ip_addresses
}

output "api_outputs" {
  description = "The IDs, state, and version outputs of the APIs created"
  value = {
      id             = azurerm_api_management_api.api.id
      is_current     = azurerm_api_management_api.api.is_current
      is_online      = azurerm_api_management_api.api.is_online
      version        = azurerm_api_management_api.api.version
      version_set_id = azurerm_api_management_api.api.version_set_id
    }
}

output "group_id" {
  description = "The ID of the API Management Group created"
  value = azurerm_api_management_group.group.id
}

output "product_ids" {
  description = "The ID of the Product created"
  value = azurerm_api_management_product.product.id
}

output "product_api_ids" {
  description = "The ID of the Product/API association created"
  value       = azurerm_api_management_product_api.product_api.id
}

output "product_group_ids" {
  description = "The ID of the Product/Group association created"
  value       = azurerm_api_management_product_group.product_group.id
}