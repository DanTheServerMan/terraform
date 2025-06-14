terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_vnic_lan_connectivity_policy" "lan_policy" {
  name            = var.lan_connectivity_policy_name
  description     = var.lan_connectivity_policy_desc
  target_platform = var.target_platform
}
