terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_vmedia_policy" "vmedia" {
  name          = var.vmedia_policy_name
  description   = var.vmedia_policy_desc
  enabled       = var.vmedia_policy_enabled
  encryption    = var.vmedia_policy_encryption
  low_power_usb = var.vmedia_policy_low_power_usb
}
