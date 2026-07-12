output "stream_analytics_output_synapses_database" {
  description = "Map of database values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.database }
}
output "stream_analytics_output_synapses_name" {
  description = "Map of name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.name }
}
output "stream_analytics_output_synapses_password" {
  description = "Map of password values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.password }
  sensitive   = true
}
output "stream_analytics_output_synapses_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.resource_group_name }
}
output "stream_analytics_output_synapses_server" {
  description = "Map of server values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.server }
}
output "stream_analytics_output_synapses_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.stream_analytics_job_name }
}
output "stream_analytics_output_synapses_table" {
  description = "Map of table values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.table }
}
output "stream_analytics_output_synapses_user" {
  description = "Map of user values across all stream_analytics_output_synapses, keyed the same as var.stream_analytics_output_synapses"
  value       = { for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : k => v.user }
}

