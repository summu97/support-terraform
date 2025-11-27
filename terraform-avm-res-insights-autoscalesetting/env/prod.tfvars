location            = "westus2"
resource_group_name = "rg-prod-app"
name                = "autoscale-prod"
target_resource_id  = "/subscriptions/<SUB-ID>/resourceGroups/rg-prod-app/providers/Microsoft.Compute/virtualMachineScaleSets/vmss-prod"

profiles = {
  prod-default = {
    name = "ProdProfile"
    capacity = {
      default = 3
      maximum = 10
      minimum = 3
    }

    rules = {
      cpu-scale-out = {
        metric_trigger = {
          metric_name      = "Percentage CPU"
          operator         = "GreaterThan"
          statistic        = "Average"
          time_aggregation = "Average"
          time_grain       = "PT1M"
          time_window      = "PT5M"
          threshold        = 60
        }
        scale_action = {
          direction = "Increase"
          type      = "ChangeCount"
          value     = "2"
          cooldown  = "PT5M"
        }
      }

      cpu-scale-in = {
        metric_trigger = {
          metric_name      = "Percentage CPU"
          operator         = "LessThan"
          statistic        = "Average"
          time_aggregation = "Average"
          time_grain       = "PT1M"
          time_window      = "PT5M"
          threshold        = 40
        }
        scale_action = {
          direction = "Decrease"
          type      = "ChangeCount"
          value     = "1"
          cooldown  = "PT10M"
        }
      }
    }
  }
}

enable_telemetry = true
enabled          = true
tags = {
  environment = "prod"
  owner       = "platform-team"
  critical    = "true"
}
