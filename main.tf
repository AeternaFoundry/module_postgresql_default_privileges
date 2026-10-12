resource "postgresql_default_privileges" "default_privileges" {
  for_each = var.default_privileges

  database          = each.value.database
  object_type       = each.value.object_type
  owner             = each.value.owner
  privileges        = each.value.privileges
  role              = each.value.role
  schema            = each.value.schema
  with_grant_option = each.value.with_grant_option
}

