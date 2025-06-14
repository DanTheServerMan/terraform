terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_fabric_eth_network_group_policy" "network_group" {
  name        = var.eth_network_group_policy_name
  description = var.eth_network_group_policy_desc

  vlan_settings {
    native_vlan   = 1
    allowed_vlans = var.vnic_vlans
    object_type   = "fabric.VlanSettings"
  }
}
