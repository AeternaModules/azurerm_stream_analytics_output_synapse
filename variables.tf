variable "stream_analytics_output_synapses" {
  description = <<EOT
Map of stream_analytics_output_synapses, attributes below
Required:
    - database
    - name
    - password
    - password_key_vault_id (optional, alternative to password)
    - password_key_vault_secret_name (optional, alternative to password)
    - resource_group_name
    - server
    - stream_analytics_job_name
    - table
    - user
EOT

  type = map(object({
    database                       = string
    name                           = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    resource_group_name            = string
    server                         = string
    stream_analytics_job_name      = string
    table                          = string
    user                           = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_synapse's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: stream_analytics_job_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: server
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: database
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: table
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: user
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password
  #   condition: length(value) > 0
  #   message:   must not be empty
}

