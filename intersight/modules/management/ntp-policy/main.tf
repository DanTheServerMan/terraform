terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_ntp_policy" "ntp" {
  name        = var.ntp_policy_name
  description = var.ntp_policy_desc
  enabled     = var.ntp_enabled
  ntp_servers = var.ntp_servers
  timezone    = var.ntp_timezone
}
