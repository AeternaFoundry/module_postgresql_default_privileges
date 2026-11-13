output "default_privileges_id" {
  description = "Map of id values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.id }
}
output "default_privileges_database" {
  description = "Map of database values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.database }
}
output "default_privileges_object_type" {
  description = "Map of object_type values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.object_type }
}
output "default_privileges_owner" {
  description = "Map of owner values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.owner }
}
output "default_privileges_privileges" {
  description = "Map of privileges values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.privileges }
}
output "default_privileges_role" {
  description = "Map of role values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.role }
}
output "default_privileges_schema" {
  description = "Map of schema values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.schema }
}
output "default_privileges_with_grant_option" {
  description = "Map of with_grant_option values across all default_privileges, keyed the same as var.default_privileges"
  value       = { for k, v in postgresql_default_privileges.default_privileges : k => v.with_grant_option }
}

