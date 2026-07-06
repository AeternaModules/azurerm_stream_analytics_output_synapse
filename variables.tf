variable "stream_analytics_output_synapses" {
  description = <<EOT
Map of stream_analytics_output_synapses, attributes below
Required:
    - database
    - name
    - password
    - resource_group_name
    - server
    - stream_analytics_job_name
    - table
    - user
EOT

  type = map(object({
    database                  = string
    name                      = string
    password                  = string
    resource_group_name       = string
    server                    = string
    stream_analytics_job_name = string
    table                     = string
    user                      = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.resource_group_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.server) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.database) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.table) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.user) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_synapses : (
        length(v.password) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

