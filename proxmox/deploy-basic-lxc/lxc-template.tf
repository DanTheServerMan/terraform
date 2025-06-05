# This defines our provider and necessary information to utilize the provider
# Documentation can be found here: https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/guides/developer
terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.pve_api_url
  pm_api_token_id = var.pve_api_token_id
  pm_api_token_secret = var.pve_api_token_secret 
  pm_tls_insecure = true
}

# Using our provider, we're defining a new resources called "lxc"
# The name, cores, memory, etc. have all been converted to a variable in variables.tf
resource "proxmox_lxc" "basic" {
  count        = var.lxc_count  
  target_node  = var.pve_hostname
  hostname     = "${var.lxc_name}-${count.index + 1}" # Example: lxc_name is 'test', count is 3. This will name lxcs "test-1, test-2, test-3"
  vmid         = var.lxc_id + count.index
  ostemplate   = "${var.lxc_template_datastore}:vztmpl/${var.lxc_template}"
  password     = var.lxc_password
  unprivileged = true

  // Terraform will crash without rootfs defined
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
