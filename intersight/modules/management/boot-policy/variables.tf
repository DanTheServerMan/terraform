############################
# Boot Policy
############################

variable "boot_policy_name" {
  description = "Name of the boot policy"
  type        = string
}

variable "boot_policy_desc" {
  description = "Description of the boot policy"
  type        = string
}

variable "boot_policy_mode" {
  description = "Configured boot mode"
  type        = string
}

variable "boot_policy_secure_boot" {
  description = "Enforce UEFI Secure Boot"
  type        = bool
}
