variable "default_privileges" {
  description = <<EOT
Map of default_privileges, attributes below
Required:
    - database
    - object_type
    - owner
    - privileges
    - role
Optional:
    - schema
    - with_grant_option
EOT

  type = map(object({
    database          = string
    object_type       = string
    owner             = string
    privileges        = set(string)
    role              = string
    schema            = optional(string)
    with_grant_option = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.default_privileges : (
        contains(["table", "sequence", "function", "routine", "type", "schema"], v.object_type)
      )
    ])
    error_message = "must be one of: \"table\", \"sequence\", \"function\", \"routine\", \"type\", \"schema\""
  }
}

