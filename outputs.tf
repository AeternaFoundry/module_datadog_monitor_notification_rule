output "monitor_notification_rules_id" {
  description = "Map of id values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no id are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitor_notification_rules_bundle_config" {
  description = "Map of bundle_config values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no bundle_config are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.bundle_config if v.bundle_config != null && length(v.bundle_config) > 0 }
}
output "monitor_notification_rules_conditional_recipients" {
  description = "Map of conditional_recipients values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no conditional_recipients are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.conditional_recipients if v.conditional_recipients != null && length(v.conditional_recipients) > 0 }
}
output "monitor_notification_rules_filter" {
  description = "Map of filter values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no filter are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "monitor_notification_rules_name" {
  description = "Map of name values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no name are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitor_notification_rules_recipients" {
  description = "Map of recipients values across all monitor_notification_rules, keyed the same as var.monitor_notification_rules except keys with no recipients are omitted"
  value       = { for k, v in datadog_monitor_notification_rule.monitor_notification_rules : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}

