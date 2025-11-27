location            = "centralindia"
resource_group_name = "rg-qa-app"
name                = "autoscale-qa"
target_resource_id  = "/subscriptions/<SUB-ID>/resourceGroups/rg-qa-app/providers/Microsoft.Compute/virtualMachineScaleSets/vmss-qa"

profiles = {
  qa-default = {
    name = "QAProfile"
    capacity = {
      default = 2
      maximum = 4
      minimum = 2
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
          threshold        = 65
        }
        scale_action = {
          direction = "Increase"
          type      = "ChangeCount"
          value     = "1"
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
          threshold        = 35
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
  environment = "qa"
  owner       = "devops"
}
