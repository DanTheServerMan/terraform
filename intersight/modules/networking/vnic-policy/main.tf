terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_vnic_eth_if" "vnic" {
  name  = var.vnic_name
  order = var.vnic_order

  mac_pool {
    moid = var.mac_pool_moid
  }

  placement {
    id            = var.placement_id
    uplink        = var.placement_uplink
    auto_pci_link = true
    switch_id     = var.fabric
    object_type   = "vnic.PlacementSettings"
  }

  lan_connectivity_policy {
    moid        = var.lan_connectivity_policy_moid
    object_type = "vnic.LanConnectivityPolicy"
  }

  eth_network_policy {
    moid        = var.eth_network_policy_moid
    object_type = "vnic.EthNetworkPolicy"
  }

  eth_adapter_policy {
    moid        = var.eth_adapter_policy_moid
    object_type = "vnic.EthAdapterPolicy"
  }

  eth_qos_policy {
    moid        = var.eth_qos_policy_moid
    object_type = "vnic.EthQosPolicy"
  }

  fabric_eth_network_group_policy {
    moid        = var.eth_network_group_policy_moid
    object_type = "fabric.EthNetworkGroupPolicy"
  }
}
