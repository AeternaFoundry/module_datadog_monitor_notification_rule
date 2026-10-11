variable "monitor_notification_rules" {
  description = <<EOT
Map of monitor_notification_rules, attributes below
Required:
    - name
Optional:
    - recipients
    - bundle_config (block):
        - duration (optional)
    - conditional_recipients (block):
        - conditions (optional, block):
            - recipients (required)
            - scope (required)
        - fallback_recipients (optional)
    - filter (block):
        - scope (optional)
        - tags (optional)
EOT

  type = map(object({
    name       = string
    recipients = optional(set(string))
    bundle_config = optional(list(object({
      duration = optional(number)
    })))
    conditional_recipients = optional(list(object({
      conditions = optional(list(object({
        recipients = set(string)
        scope      = string
      })))
      fallback_recipients = optional(set(string))
    })))
    filter = optional(list(object({
      scope = optional(string)
      tags  = optional(set(string))
    })))
  }))
}

