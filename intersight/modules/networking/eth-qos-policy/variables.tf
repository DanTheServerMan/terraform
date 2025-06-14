############################
# Ethernet QoS  Policy
############################

variable "qos_policy_name" {
  type = string
}

variable "qos_policy_desc" {
  type = string
}

variable "qos_policy_mtu" {
  type = number
}

variable "qos_policy_class" {
  type = string
}
