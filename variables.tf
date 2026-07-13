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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_desktop_application's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: application_group_id
  #   source:    [from applicationgroup.ValidateApplicationGroupID] !ok
  # path: application_group_id
  #   source:    [from applicationgroup.ValidateApplicationGroupID] err != nil
  # path: friendly_name
  #   condition: length(value) >= 1 && length(value) <= 64
  #   message:   must be between 1 and 64 characters
  # path: description
  #   condition: length(value) >= 1 && length(value) <= 512
  #   message:   must be between 1 and 512 characters
  # path: command_line_argument_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

