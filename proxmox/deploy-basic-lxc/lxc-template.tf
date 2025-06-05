## Define provider and its version
# Documentation can be found here: https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/guides/developerterraform 
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
resource "proxmox_lxc" "basic" {
  count        = var.lxc_count  
  target_node  = var.pve_hostname
  hostname     = "${var.lxc_name}-${count.index + 1}"
  vmid         = var.lxc_id + count.index
  onboot       = var.lxc_onboot
  start        = var.lxc_start
  ostemplate   = "${var.lxc_template_datastore}:vztmpl/${var.lxc_template}"
  password     = var.lxc_password
  
  unprivileged = true

  rootfs {
    storage = var.lxc_datastore
    size    = var.lxc_disk_size 
  }

  network {
    name   = var.lxc_nic_name
    bridge = var.lxc_nic_bridge
    ip     = var.lxc_nic_mode
  }
}
