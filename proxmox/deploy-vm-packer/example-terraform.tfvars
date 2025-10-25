# pm_api_token_secret = Define this with a env variable, don't put it in a file!
# Example : 'export TF_VAR_pve_api_token_secret=' will allow terraform to auto locate it

# Proxmox API endpoint URL (usually ends with /api2/json/)
pve_api_url         = "https://YOUR HOST HERE:8006/api2/json/"

# API token ID in the format 'user@realm!tokenid'
pve_api_token_id    = "terraform@pve!apitoken"

# Proxmox VE node hostname as seen in the Datacenter object
pve_hostname        = "proxmox-host-name-here" 

# This is the STARTING VM ID, with count adding onto it (Ex ID+1,ID+2,etc.)
vm_id               = "2000" 

# The name of the VM
vm_name             = "docker-infra"

# The number of instances of this resource created
vm_count            = "3"  

# BIOS or ovmf 
vm_bios             = "ovmf"

# Number of cores given to the VM
vm_cores            = "4"

# Boolean, defines if a VM will start with the host
vm_onboot           = "true"

 # This is RAM (Ex. 4GB = 4096) 
vm_memory           = "6144"

# VM SCSI controller 
vm_scsihw           = "virtio-scsi-single"

# Boolean, defines if QEMU Guest Agent is installed
vm_qemu_agent       = "1"

# This is the VM notes of our VM
vm_desc             = "Deployed with Terraform"  

# Datastore which the VM's disk will live on
vm_disk1_datastore  = "nfs-datastore"

# Size is in GiB
vm_disk1_size       = "200" 

# Format of the disk (ex. 'RAW', 'qcow2', etc.)
vm_disk1_format     = "qcow2"

# This is the storage controller
vm_disk1_slot       = "scsi0"  

# References the interface number of the VM's NIC 
vm_nic1_id          = "1"

# Model of the VM's NIC 
vm_nic1_model       = "virtio"

# Which bridge the VM's NIC will use
vm_nic1_bridge      = "vmbr0"

# True/False to enable/disable the firewall on the VMs NIC
vm_nic1_firewalls   = "false"

# Template that will be cloned
vm_template         = "packer-ubuntu2404-template"

# List of IP's for each VM
vm_ipconfig         = ["ip=192.168.1.220/24,gw=192.168.1.254","ip=192.168.1.221/24,gw=192.168.1.254","ip=192.168.1.222/24,gw=192.168.1.254"]

# Leave as cloud-init 
vm_ostype           = "cloud-init"

# Boot order, ensure ide0 is present so it will utilize cloudinit
vm_boot_device      = "order=scsi0;ide0" 

# Tag in PVE
vm_tags             = "dev"