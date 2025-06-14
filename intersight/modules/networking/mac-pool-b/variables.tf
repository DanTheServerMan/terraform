############################
# MAC Address Pool
############################

variable "mac_pool_b_name" {
  description = "Name of the A-side MAC address pool"
  type        = string
}

variable "mac_pool_b_starting_mac_addr" {
  description = "First MAC pool address"
  type        = string
}

variable "mac_pool_b_size" {
  description = "Size of the MAC address pool"
  type        = string
}