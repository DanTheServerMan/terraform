############################
# Syslog Policy
############################

variable "syslog_policy_name" {
  type = string
}

variable "syslog_policy_desc" {
  type = string
}

variable "syslog_policy_local_client_min_sev" {
  type = string
}

variable "syslog_policy_remote_client_enabled" {
  type = bool
}

variable "syslog_policy_remote_client_hostname" {
  type = string
}

variable "syslog_policy_remote_client_min_severity" {
  type = string
}
