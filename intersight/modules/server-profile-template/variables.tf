############################
# Server Profile Template
############################

variable "boot_policy_moid" {
  type = string
}

variable "ntp_policy_moid" {
  type = string
}

variable "vmedia_policy_moid" {
  type = string
}

variable "firmware_policy_moid" {
  type = string
}

variable "thermal_policy_moid" {
  type = string
}

variable "access_policy_moid" {
  type = string
}

variable "syslog_policy_moid" {
  type = string
}

variable "lan_connectivity_policy_moid" {
  type = string
}

variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "target_platform" {
  type = string
}

variable "organization_moid" {
  type = string
}
