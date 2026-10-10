variable "appstream_user_stack_associations" {
  description = <<EOT
Map of appstream_user_stack_associations, attributes below
Required:
    - authentication_type
    - stack_name
    - user_name
Optional:
    - region
    - send_email_notification
EOT

  type = map(object({
    authentication_type     = string
    stack_name              = string
    user_name               = string
    region                  = optional(string)
    send_email_notification = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.appstream_user_stack_associations : (
        length(v.stack_name) >= 1 && length(v.stack_name) <= 128
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

