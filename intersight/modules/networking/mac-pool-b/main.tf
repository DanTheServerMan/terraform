terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

# MAC Pool for Fabric A
resource "intersight_macpool_pool" "mac_pool_b" {
  name = var.mac_pool_b_name

  mac_blocks {
    from = var.mac_pool_b_starting_mac_addr
    size = var.mac_pool_b_size
  }
}

