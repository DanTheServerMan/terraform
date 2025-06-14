terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}


resource "intersight_ippool_pool" "oob_ip_pool" {
  name                        = var.oob_ip_pool_name
  description                 = var.oob_ip_pool_desc
  assignment_order            = "sequential"
  enable_block_level_subnet_config = "true"

  ip_v4_blocks {
    size = var.oob_ip_pool_size
    from = var.oob_ip_pool_first_ip

    ip_v4_config {
      object_type   = "ippool.IpV4Config"
      gateway       = var.oob_ip_pool_gw
      netmask       = var.oob_ip_pool_netmask
      primary_dns   = var.oob_ip_pool_primary_dns
      secondary_dns = var.oob_ip_pool_secondary_dns
    }
  }
}
