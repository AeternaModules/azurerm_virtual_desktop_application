variable "virtual_desktop_applications" {
  description = <<EOT
Map of virtual_desktop_applications, attributes below
Required:
    - application_group_id
    - command_line_argument_policy
    - name
    - path
Optional:
    - command_line_arguments
    - description
    - friendly_name
    - icon_index
    - icon_path
    - show_in_portal
EOT

  type = map(object({
    application_group_id         = string
    command_line_argument_policy = string
    name                         = string
    path                         = string
    command_line_arguments       = optional(string)
    description                  = optional(string)
    friendly_name                = optional(string)
    icon_index                   = optional(number)
    icon_path                    = optional(string)
    show_in_portal               = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_applications : (
        (length(v.name) > 0) && (can(regex("^[-a-zA-Z0-9]{1,260}$", v.name)))
      )
    ])
    error_message = "all of: must not be empty; Virtual desktop application name must be 1 - 260 characters long, contain only letters, numbers and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_applications : (
        v.friendly_name == null || (length(v.friendly_name) >= 1 && length(v.friendly_name) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_applications : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 512)
      )
    ])
    error_message = "must be between 1 and 512 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

