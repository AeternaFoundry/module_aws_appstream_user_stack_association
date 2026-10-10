output "appstream_user_stack_associations_id" {
  description = "Map of id values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appstream_user_stack_associations_authentication_type" {
  description = "Map of authentication_type values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "appstream_user_stack_associations_region" {
  description = "Map of region values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appstream_user_stack_associations_send_email_notification" {
  description = "Map of send_email_notification values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.send_email_notification if v.send_email_notification != null }
}
output "appstream_user_stack_associations_stack_name" {
  description = "Map of stack_name values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.stack_name if v.stack_name != null && length(v.stack_name) > 0 }
}
output "appstream_user_stack_associations_user_name" {
  description = "Map of user_name values across all appstream_user_stack_associations, keyed the same as var.appstream_user_stack_associations"
  value       = { for k, v in aws_appstream_user_stack_association.appstream_user_stack_associations : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

