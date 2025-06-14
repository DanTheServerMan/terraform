terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

# Thermal Policy
resource "intersight_thermal_policy" "thermal" {
  name            = var.thermal_policy_name
  description     = var.thermal_policy_desc
  fan_control_mode = var.thermal_policy_fanpolicy
}
