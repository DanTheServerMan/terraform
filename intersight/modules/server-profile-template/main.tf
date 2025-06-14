terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

data "intersight_organization_organization" "default" {
  name = "default"
}

resource "intersight_server_profile_template" "template" {
  name            = var.name
  description     = var.description
  target_platform = var.target_platform

  organization {
     object_type = "organization.Organization"
     moid = data.intersight_organization_organization.default.moid
  }  

  policy_bucket {
    moid        = var.boot_policy_moid
    object_type = "boot.PrecisionPolicy"
  }

  policy_bucket {
    moid        = var.ntp_policy_moid
    object_type = "ntp.Policy"
  }

  policy_bucket {
    moid        = var.vmedia_policy_moid
    object_type = "vmedia.Policy"
  }

  policy_bucket {
    moid        = var.firmware_policy_moid
    object_type = "firmware.Policy"
  }

  policy_bucket {
    moid        = var.thermal_policy_moid
    object_type = "thermal.Policy"
  }

  policy_bucket {
    moid        = var.access_policy_moid
    object_type = "access.Policy"
  }

  policy_bucket {
    moid        = var.syslog_policy_moid
    object_type = "syslog.Policy"
  }

  policy_bucket {
    moid        = var.lan_connectivity_policy_moid
    object_type = "vnic.LanConnectivityPolicy"
  }
}
