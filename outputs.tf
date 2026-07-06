output "stream_analytics_output_synapses" {
  description = "All stream_analytics_output_synapse resources"
  value       = azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses
  sensitive   = true
}
output "stream_analytics_output_synapses_database" {
  description = "List of database values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.database]
}
output "stream_analytics_output_synapses_name" {
  description = "List of name values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.name]
}
output "stream_analytics_output_synapses_password" {
  description = "List of password values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.password]
  sensitive   = true
}
output "stream_analytics_output_synapses_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.resource_group_name]
}
output "stream_analytics_output_synapses_server" {
  description = "List of server values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.server]
}
output "stream_analytics_output_synapses_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.stream_analytics_job_name]
}
output "stream_analytics_output_synapses_table" {
  description = "List of table values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.table]
}
output "stream_analytics_output_synapses_user" {
  description = "List of user values across all stream_analytics_output_synapses"
  value       = [for k, v in azurerm_stream_analytics_output_synapse.stream_analytics_output_synapses : v.user]
}

