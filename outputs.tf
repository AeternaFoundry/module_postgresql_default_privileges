output "default_privileges_id" {
  description = "Map of id values across all default_privileges, keyed the same as var.default_privileges except keys with no id are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.id if v.id != null && length(v.id) > 0 }
}
output "default_privileges_database" {
  description = "Map of database values across all default_privileges, keyed the same as var.default_privileges except keys with no database are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.database if v.database != null && length(v.database) > 0 }
}
output "default_privileges_object_type" {
  description = "Map of object_type values across all default_privileges, keyed the same as var.default_privileges except keys with no object_type are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "default_privileges_owner" {
  description = "Map of owner values across all default_privileges, keyed the same as var.default_privileges except keys with no owner are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "default_privileges_privileges" {
  description = "Map of privileges values across all default_privileges, keyed the same as var.default_privileges except keys with no privileges are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.privileges if v.privileges != null && length(v.privileges) > 0 }
}
output "default_privileges_role" {
  description = "Map of role values across all default_privileges, keyed the same as var.default_privileges except keys with no role are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.role if v.role != null && length(v.role) > 0 }
}
output "default_privileges_schema" {
  description = "Map of schema values across all default_privileges, keyed the same as var.default_privileges except keys with no schema are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "default_privileges_with_grant_option" {
  description = "Map of with_grant_option values across all default_privileges, keyed the same as var.default_privileges except keys with no with_grant_option are omitted"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.with_grant_option if v.with_grant_option != null }
}

