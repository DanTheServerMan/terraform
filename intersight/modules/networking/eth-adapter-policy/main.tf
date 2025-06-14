terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_vnic_eth_adapter_policy" "ethadapter" {
  name         = var.ethadapter_name
  rss_settings = var.ethadapter_rss_enabled

  interrupt_settings {
    coalescing_time = 125
    coalescing_type = "MIN"
    nr_count        = 4
    mode            = "MSI"
    object_type     = "vnic.EthInterruptSettings"
  }

  completion_queue_settings {
    nr_count    = 4
    object_type = "vnic.CompletionQueueSettings"
  }

  rx_queue_settings {
    nr_count    = 4
    ring_size   = 512
    object_type = "vnic.EthRxQueueSettings"
  }

  tx_queue_settings {
    nr_count    = 4
    ring_size   = 512
    object_type = "vnic.EthTxQueueSettings"
  }
}
