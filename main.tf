data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.stream_analytics_output_synapses : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_stream_analytics_output_synapse" "stream_analytics_output_synapses" {
  for_each = var.stream_analytics_output_synapses

  database                  = each.value.database
  name                      = each.value.name
  password                  = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  resource_group_name       = each.value.resource_group_name
  server                    = each.value.server
  stream_analytics_job_name = each.value.stream_analytics_job_name
  table                     = each.value.table
  user                      = each.value.user
}

