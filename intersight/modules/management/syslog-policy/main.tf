terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

resource "intersight_syslog_policy" "syslog" {
  name        = var.syslog_policy_name
  description = var.syslog_policy_desc

  local_clients {
    min_severity = var.syslog_policy_local_client_min_sev
    object_type  = "syslog.LocalFileLoggingClient"
  }

  remote_clients {
    enabled      = var.syslog_policy_remote_client_enabled
    hostname     = var.syslog_policy_remote_client_hostname
    port         = 514
    protocol     = "tcp"
    min_severity = var.syslog_policy_remote_client_min_severity
    object_type  = "syslog.RemoteLoggingClient"
  }
}
