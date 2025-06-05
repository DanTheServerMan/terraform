# Proxmox API token secret
# Define this with an environment variable; do NOT put it in this file!
# Example: export TF_VAR_pve_api_token_secret='your_secret_here'
# pve_api_token_secret = ""

# LXC container root password
# Define this with an environment variable; do NOT put it in this file!
# Example: export TF_VAR_lxc_password='your_password_here'
# lxc_password = ""

# Proxmox API endpoint URL (usually ends with /api2/json/)
pve_api_url            = "https://HOSTNAME:8006/api2/json/"

# API token ID in the format 'user@realm!tokenid'
pve_api_token_id       = ""

# Proxmox VE node hostname as seen in the Datacenter object
pve_hostname           = "pmx"

# Base name for the LXC container(s); '-<count>' will be appended for multiple instances
lxc_name               = "terraform-lxc"

# Number of LXC containers to create
lxc_count              = "2"

# Name of the LXC template to use
lxc_template           = "ubuntu-24.10-standard_24.10-1_amd64.tar.zst"

# Datastore where the LXC template is stored
lxc_template_datastore = ""

# Starting VMID/LXC ID; increments by +1 for each container if multiple are created
lxc_id                 = "100"

# Datastore where the LXC container rootfs will be created
lxc_datastore          = ""

# Disk size for the container rootfs; must include unit (e.g., 100G, 1T)
lxc_disk_size          = "100G"

# Name of the network interface inside the container (usually "eth0")
lxc_nic_name           = "eth0"

# Bridge interface on the Proxmox host that the container NIC will attach to
lxc_nic_bridge         = "vmbr0"

# Network mode for the container NIC (e.g., "dhcp", "static")
lxc_nic_mode           = "dhcp"
