output "stream_analytics_output_synapses_id" {
  description = "Map of id values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_output_synapses_database" {
  description = "Map of database values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.database if v.database != null && length(v.database) > 0 }
}
output "stream_analytics_output_synapses_name" {
  description = "Map of name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_output_synapses_password" {
  description = "Map of password values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "stream_analytics_output_synapses_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_output_synapses_server" {
  description = "Map of server values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.server if v.server != null && length(v.server) > 0 }
}
output "stream_analytics_output_synapses_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}
output "stream_analytics_output_synapses_table" {
  description = "Map of table values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.table if v.table != null && length(v.table) > 0 }
}
output "stream_analytics_output_synapses_user" {
  description = "Map of user values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.user if v.user != null && length(v.user) > 0 }
}

