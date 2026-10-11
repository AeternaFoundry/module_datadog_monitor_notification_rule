resource "datadog_monitor_notification_rule" "monitor_notification_rules" {
  for_each = var.monitor_notification_rules

  name       = each.value.name
  recipients = each.value.recipients

  dynamic "bundle_config" {
    for_each = each.value.bundle_config != null ? each.value.bundle_config : []
    content {
      duration = bundle_config.value.duration
    }
  }

  dynamic "conditional_recipients" {
    for_each = each.value.conditional_recipients != null ? each.value.conditional_recipients : []
    content {
      dynamic "conditions" {
        for_each = conditional_recipients.value.conditions != null ? conditional_recipients.value.conditions : []
        content {
          recipients = conditions.value.recipients
          scope      = conditions.value.scope
        }
      }
      fallback_recipients = conditional_recipients.value.fallback_recipients
    }
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      scope = filter.value.scope
      tags  = filter.value.tags
    }
  }
}

