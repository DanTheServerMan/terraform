# Proxmox API endpoint URL (typically ends with /api2/json/)
variable "pve_api_url" {
  type = string
}

# API token ID in the format 'user@realm!tokenid'
variable "pve_api_token_id" {
  type = string
}

# API token secret associated with the above token ID
variable "pve_api_token_secret" {
  type = string
}

# Name to assign to the virtual machine (VM)
variable "vm_name" {
  type = string
}

# Hostname of the Proxmox VE node where the VM will be created
variable "pve_hostname" {
  type = string
}

# Unique VM ID for Proxmox (should be an integer string, e.g. "101")
variable "vm_id" {
  type = string
}

# Number of VMs to create (used with `count`, should be a stringified number)
variable "vm_count" {
  type = string
}

# Number of CPU cores assigned to the VM
variable "vm_cores" {
  type = string
}

# Whether the VM should start on host boot ("1" for yes, "0" for no)
variable "vm_onboot" {
  type = string
}

# Sets the BIOS to legacy or OVMF
variable "vm_bios" {
  type = string
}

# Enables the Guest Agent
variable "vm_qemu_agent" {
  type = string
}

# Set the target boot device. Format should be "order=scsi0;net0;ide2" or whatever you want to boot from
variable "vm_boot_device" {
  type = string
}

# ProxMox VM tag that will be added to the VM after its created, to help organize your VMs
variable "vm_tags" {
  type = string
}

# Amount of memory in MB to assign to the VM
variable "vm_memory" {
  type = string
}

# SCSI controller type (e.g., "virtio-scsi-pci", "lsi", etc.)
variable "vm_scsihw" {
  type = string
}

# Description text for the VM (visible in the Proxmox web UI)
variable "vm_desc" {
  type = string
}

# Sets the os_type to cloud-init
variable "vm_ostype" {
  type = string
  default = "cloud-init"
}

# Datastore (storage location) for the first disk
variable "vm_disk1_datastore" {
  type = string
}

# Size of the first disk (e.g., "32G")
variable "vm_disk1_size" {
  type = string
}

# Format of the first disk (e.g., "qcow2", "raw")
variable "vm_disk1_format" {
  type = string
}

# Disk slot index (e.g., "0", "1", etc.)
variable "vm_disk1_slot" {
  type = string
}

# Model type for the NIC (e.g., "virtio", "e1000")
variable "vm_nic1_id" {
  type = string
}

# Model type for the NIC (e.g., "virtio", "e1000")
variable "vm_nic1_model" {
  type = string
}

# Network bridge to attach the NIC to (e.g., "vmbr0")
variable "vm_nic1_bridge" {
  type = string
}

# Whether firewall is enabled on this NIC ("true" or "false")
variable "vm_nic1_firewalls" {
  type = string
}

# Template VM or container to clone from
variable "vm_template" {
  type = string
}

# List of IP configuration strings for cloud-init (e.g., ["ip=192.168.1.100/24,gw=192.168.1.1"])
variable "vm_ipconfig" {
  type = list(string)
}
