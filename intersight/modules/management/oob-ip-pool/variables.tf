############################
# Access Policy / OOB Management
############################
variable "oob_ip_pool_name" {
  description = "Name of the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_desc" {
  description = "Description of the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_gw" {
  description = "Default gateway for the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_netmask" {
  description = "Subnet mask for the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_primary_dns" {
  description = "Primary DNS server for OOB IP configuration"
  type        = string
}

variable "oob_ip_pool_secondary_dns" {
  description = "Secondary DNS server for OOB IP configuration"
  type        = string
}

variable "oob_ip_pool_size" {
  description = "Number of IP addresses in the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_first_ip" {
  description = "First IP address in the OOB IP pool range"
  type        = string
}