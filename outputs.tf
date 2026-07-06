output "virtual_desktop_applications" {
  description = "All virtual_desktop_application resources"
  value       = azurerm_virtual_desktop_application.virtual_desktop_applications
}
output "virtual_desktop_applications_application_group_id" {
  description = "List of application_group_id values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.application_group_id]
}
output "virtual_desktop_applications_command_line_argument_policy" {
  description = "List of command_line_argument_policy values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.command_line_argument_policy]
}
output "virtual_desktop_applications_command_line_arguments" {
  description = "List of command_line_arguments values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.command_line_arguments]
}
output "virtual_desktop_applications_description" {
  description = "List of description values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.description]
}
output "virtual_desktop_applications_friendly_name" {
  description = "List of friendly_name values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.friendly_name]
}
output "virtual_desktop_applications_icon_index" {
  description = "List of icon_index values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.icon_index]
}
output "virtual_desktop_applications_icon_path" {
  description = "List of icon_path values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.icon_path]
}
output "virtual_desktop_applications_name" {
  description = "List of name values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.name]
}
output "virtual_desktop_applications_path" {
  description = "List of path values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.path]
}
output "virtual_desktop_applications_show_in_portal" {
  description = "List of show_in_portal values across all virtual_desktop_applications"
  value       = [for k, v in azurerm_virtual_desktop_application.virtual_desktop_applications : v.show_in_portal]
}

