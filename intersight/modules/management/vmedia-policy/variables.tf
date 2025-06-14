############################
# vMedia Policy
############################

variable "vmedia_policy_name" {
  description = "Name of the vMedia policy"
  type        = string
}

variable "vmedia_policy_desc" {
  description = "Description of the vMedia policy"
  type        = string
}

variable "vmedia_policy_enabled" {
  description = "Enable or disable the vMedia policy"
  type        = bool
}

variable "vmedia_policy_encryption" {
  description = "Enable encryption in the vMedia policy"
  type        = bool
}

variable "vmedia_policy_low_power_usb" {
  description = "Enable low power USB setting"
  type        = bool
}
