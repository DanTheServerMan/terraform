############################
# vNIC Policy
############################

variable "vnic_name" {
  type = string
}

variable "vnic_order" {
  type = number
}

variable "mac_pool_moid" {
  type = string
}

variable "placement_id" {
  type = string
}

variable "placement_uplink" {
  type = string
}

variable "fabric" {
  type = string
}

variable "lan_connectivity_policy_moid" {
  type = string
}

variable "eth_network_policy_moid" {
  type = string
}

variable "eth_adapter_policy_moid" {
  type = string
}

variable "eth_qos_policy_moid" {
  type = string
}

variable "eth_network_group_policy_moid" {
  type = string
}
