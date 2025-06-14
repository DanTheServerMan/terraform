terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_access_policy" "access" {
  name        = var.access_policy_name
  description = var.access_policy_desc

  configuration_type {
    configure_out_of_band = true
    configure_inband      = false
  }

  out_of_band_ip_pool {
    moid        = var.oob_ip_pool_moid
    object_type = "ippool.Pool"
  }
}
