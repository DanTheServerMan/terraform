############################
# NTP Policy
############################

variable "ntp_policy_name" {
  description = "Name of the NTP policy"
  type        = string
}

variable "ntp_policy_desc" {
  description = "Description of the NTP policy"
  type        = string
}

variable "ntp_enabled" {
  description = "Enable the NTP policy"
  type        = bool
}

variable "ntp_servers" {
  description = "List of NTP servers"
  type        = list(string)
}

variable "ntp_timezone" {
  description = "Timezone for NTP policy"
  type        = string
}
