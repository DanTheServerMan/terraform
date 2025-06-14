############################
# MAC Address Pool
############################

variable "mac_pool_a_name" {
  description = "Name of the A-side MAC address pool"
  type        = string
}

variable "mac_pool_a_starting_mac_addr" {
  description = "First MAC pool address"
  type        = string
}

variable "mac_pool_a_size" {
  description = "Size of the MAC address pool"
  type        = string
}