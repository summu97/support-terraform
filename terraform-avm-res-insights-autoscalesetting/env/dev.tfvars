location            = "eastus"
resource_group_name = "rg-dev-app"
name                = "autoscale-dev"
target_resource_id  = "/subscriptions/<SUB-ID>/resourceGroups/rg-dev-app/providers/Microsoft.Compute/virtualMachineScaleSets/vmss-dev"

profiles = {
  dev-default = {
    name = "DevProfile"
    capacity = {
      default = 1
      maximum = 2
      minimum = 1
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
          threshold        = 70
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
          threshold        = 30
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
  environment = "dev"
  owner       = "devops"
}
