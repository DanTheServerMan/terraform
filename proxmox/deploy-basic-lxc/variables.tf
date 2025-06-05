variable "pve_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "pve_api_token_id" {
  description = "Proxmox API token ID"
  type        = string
}

variable "pve_api_token_secret" {
    description = "The Proxmox API token secret"
  type    = string
}

variable "pve_hostname" {
  description = "The Proxmox VE hostname as seen in the Datacenter object"
  type        = string
}

variable "lxc_name" {
  description = "Name of the LXC container"
  type        = string
}

variable "lxc_template" {
  description = "Name of the LXC template"
  type        = string
}

variable "lxc_template_datastore" {
  description = "Name of the datastore wehre the LXC template exists"
  type        = string
}

variable "lxc_id" {
  description = "VMID of the LXC container"
  type        = number
}

variable "lxc_count" {
  description = "Number of LXC containers to create"
  type        = number
  default     = 1
}

variable "lxc_password" {
  description = "Password for the LXC container root user"
  type        = string
  sensitive   = true
}

variable "lxc_datastore" {
  description = "Datastore for the LXC container"
  type        = string
}

variable "lxc_disk_size" {
  description = "Size of the LXC disk in GB"
  type        = string
}

variable "lxc_nic_name" {
  description = "Name of the LXC network interface"
  type        = string
}

variable "lxc_nic_bridge" {
  description = "Bridge for the LXC network interface"
  type        = string
}

variable "lxc_nic_mode" {
  description = "Network mode for the LXC container"
  type        = string
}
