output "virtual_desktop_applications_id" {
  description = "Map of id values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_desktop_applications_application_group_id" {
  description = "Map of application_group_id values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.application_group_id if v.application_group_id != null && length(v.application_group_id) > 0 }
}
output "virtual_desktop_applications_command_line_argument_policy" {
  description = "Map of command_line_argument_policy values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.command_line_argument_policy if v.command_line_argument_policy != null && length(v.command_line_argument_policy) > 0 }
}
output "virtual_desktop_applications_command_line_arguments" {
  description = "Map of command_line_arguments values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.command_line_arguments if v.command_line_arguments != null && length(v.command_line_arguments) > 0 }
}
output "virtual_desktop_applications_description" {
  description = "Map of description values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.description if v.description != null && length(v.description) > 0 }
}
output "virtual_desktop_applications_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "virtual_desktop_applications_icon_index" {
  description = "Map of icon_index values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.icon_index if v.icon_index != null }
}
output "virtual_desktop_applications_icon_path" {
  description = "Map of icon_path values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.icon_path if v.icon_path != null && length(v.icon_path) > 0 }
}
output "virtual_desktop_applications_name" {
  description = "Map of name values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_desktop_applications_path" {
  description = "Map of path values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.path if v.path != null && length(v.path) > 0 }
}
output "virtual_desktop_applications_show_in_portal" {
  description = "Map of show_in_portal values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.show_in_portal if v.show_in_portal != null }
}

