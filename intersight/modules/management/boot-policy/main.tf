terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_boot_precision_policy" "boot_precision" {
  name                     = var.boot_policy_name
  description              = var.boot_policy_desc
  configured_boot_mode     = var.boot_policy_mode
  enforce_uefi_secure_boot = var.boot_policy_secure_boot
}
