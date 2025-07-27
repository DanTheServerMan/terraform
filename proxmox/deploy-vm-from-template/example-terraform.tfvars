
# -------------------------------------------------------------------
# ProxMox API Configuration
# -------------------------------------------------------------------
# Proxmox API endpoint URL (typically ends with /api2/json/)
pve_api_url         = "https://192.168.1.102:8006/api2/json/"

# API token ID in the format 'user@realm!tokenid'
# Guidance on how to get this info is here:
# https://dantheserverman.com/2025/01/18/how-to-setup-api-access-in-proxmox/
pve_api_token_id    = "terraform@pve!apitoken"

# The PVE hostname as seen in the Datacenter object
pve_hostname        = "pmx-2"

# This is your API key, so its recommended to NOT store this in a plaintext file 
# Use "export TF_VAR_pve_api_token_secret=''" to create a env. variable
#pve_api_token_secret = ""

# -------------------------------------------------------------------
# VM General Configuration
# -------------------------------------------------------------------
# This is the STARTING VM ID, with count adding onto it (e.g. ID+1, ID+2, etc.)
vm_id               = "8000"

# The base name of the VM
vm_name             = "terraform-vm"

# Description or notes for the VM in the Proxmox UI
vm_desc             = "Deployed with Terraform"

# Number of VM instances to create (this creates 3 VM clones)
vm_count            = "3"

# Name of the VM template to clone from
vm_template         = "packer-ubuntu2404-template"

# Boolean ("true" or "false") defining if a VM starts automatically on host boot
vm_onboot           = "true"

# List of IP configurations, one per VM instance
vm_ipconfig         = [
  "ip=192.168.1.200/24,gw=192.168.1.1",
  "ip=192.168.1.201/24,gw=192.168.1.1",
  "ip=192.168.1.202/24,gw=192.168.1.1"
]

# -------------------------------------------------------------------
# VM Hardware Configuration
# -------------------------------------------------------------------
# Number of CPU cores assigned to each cloned VM
vm_cores            = "2"

# Amount of RAM assigned to each VM in MiB (4096 = 4 GiB)
vm_memory           = "4096"

# SCSI hardware controller type (e.g., "virtio-scsi-single"), works for most cases
vm_scsihw           = "virtio-scsi-single"

# Datastore where each VM disk will be created/cloned
vm_disk1_datastore  = "bastet-nfs-datastore"

# Disk size in GiB for the first disk
vm_disk1_size       = "100"

# Disk format, e.g., "qcow2" or "raw"
vm_disk1_format     = "qcow2"

# Disk slot/controller identifier, e.g., "scsi0"
vm_disk1_slot       = "scsi0"

# Network interface model, e.g., "virtio"
vm_nic1_model       = "virtio"

# Network bridge the NIC connects to, e.g., "vmbr0"
vm_nic1_bridge      = "vmbr0"

# Firewall enabled on the NIC ("true" or "false")
vm_nic1_firewalls   = "false"


