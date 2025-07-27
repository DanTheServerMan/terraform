## Define provider and its version
# Documentation can be found here: https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/guides/developer
terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

## Define provider configuration
provider "proxmox" {
  pm_api_url = var.pve_api_url
  pm_api_token_id = var.pve_api_token_id
  pm_api_token_secret = var.pve_api_token_secret 
  pm_tls_insecure = true
}

## Define resource configuration
resource "proxmox_vm_qemu" "vm" {
 name        = "${var.vm_name}-${count.index + 1}" 
 target_node = var.pve_hostname
 vmid        = var.vm_id + count.index
 count       = var.vm_count
 cores       = var.vm_cores
 memory      = var.vm_memory
 onboot      = var.vm_onboot
 scsihw      = var.vm_scsihw
 desc        = var.vm_desc
 clone       = var.vm_template 
 ipconfig0   = var.vm_ipconfig[count.index]
 force_create = true

 disk {
   storage = var.vm_disk1_datastore
   size = var.vm_disk1_size
   format = var.vm_disk1_format
   type = "disk"
   slot = var.vm_disk1_slot
 }

disk {
  storage = var.vm_disk1_datastore
  type    = "cloudinit"  
  slot = "ide0"
}

 network {
   model = var.vm_nic1_model
   bridge = var.vm_nic1_bridge
   firewall = var.vm_nic1_firewalls
  }

  serial {
   id = 0
 }
}