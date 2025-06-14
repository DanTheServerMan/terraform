############################
# Thermal Policy
############################

variable "thermal_policy_name" {
  description = "Name of the thermal policy"
  type        = string
}

variable "thermal_policy_desc" {
  description = "Description of the thermal policy"
  type        = string
}

variable "thermal_policy_fanpolicy" {
  description = "Fan policy to apply (e.g., 'Balanced', 'HighPower')"
  type        = string
}

