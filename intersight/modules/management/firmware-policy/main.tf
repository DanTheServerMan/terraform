terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_firmware_policy" "firmware" {
  name            = var.firmware_policy_name
  description     = var.firmware_policy_desc
  target_platform = var.target_platform

  model_bundle_combo {
    bundle_version = var.firmware_bundle_version
    model_family   = var.firmware_model_family
  }
}
