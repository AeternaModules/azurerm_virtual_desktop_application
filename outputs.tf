output "virtual_desktop_applications_id" {
  description = "Map of id values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.id }
}
output "virtual_desktop_applications_application_group_id" {
  description = "Map of application_group_id values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.application_group_id }
}
output "virtual_desktop_applications_command_line_argument_policy" {
  description = "Map of command_line_argument_policy values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.command_line_argument_policy }
}
output "virtual_desktop_applications_command_line_arguments" {
  description = "Map of command_line_arguments values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.command_line_arguments }
}
output "virtual_desktop_applications_description" {
  description = "Map of description values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.description }
}
output "virtual_desktop_applications_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.friendly_name }
}
output "virtual_desktop_applications_icon_index" {
  description = "Map of icon_index values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.icon_index }
}
output "virtual_desktop_applications_icon_path" {
  description = "Map of icon_path values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.icon_path }
}
output "virtual_desktop_applications_name" {
  description = "Map of name values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.name }
}
output "virtual_desktop_applications_path" {
  description = "Map of path values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.path }
}
output "virtual_desktop_applications_show_in_portal" {
  description = "Map of show_in_portal values across all virtual_desktop_applications, keyed the same as var.virtual_desktop_applications"
  value       = { for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : k => v.show_in_portal }
}

