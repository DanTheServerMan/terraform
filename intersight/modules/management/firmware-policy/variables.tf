############################
# Firmware Policy
############################

variable "firmware_policy_name" {
  description = "Name of the firmware policy"
  type        = string
}

variable "firmware_policy_desc" {
  description = "Description of the firmware policy"
  type        = string
}

variable "target_platform" {
  description = "Target platform for the policy"
  type        = string
}

variable "firmware_bundle_version" {
  description = "Firmware bundle version"
  type        = string
}

variable "firmware_model_family" {
  description = "Model family for the firmware bundle"
  type        = string
}
