terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_vnic_eth_qos_policy" "qos" {
  name        = var.qos_policy_name
  description = var.qos_policy_desc
  mtu         = var.qos_policy_mtu
  rate_limit  = 0
  cos         = 0
  burst       = 1024
  priority    = var.qos_policy_class
}
