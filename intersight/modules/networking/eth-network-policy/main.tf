terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

# Ethernet Network Policy (for VLAN)
resource "intersight_vnic_eth_network_policy" "vlan" {
  name = var.vnic_eth_network_policy_name

  vlan_settings {
    object_type  = "vnic.VlanSettings"
    default_vlan = var.vnic_vlans
    mode         = "ACCESS"
  }
}