########################################
# Server Profile Template
########################################
server_profile_template_name  = "Terraform-Server-Profile-Template"  # Name of the server profile template
server_profile_template_desc  = "Created via Terraform"              # Description of the server profile
target_platform               = "FIAttached"                         # Target platform (e.g. FIAttached, Standalone)


########################################
# NTP Policy
########################################
ntp_policy_name   = "Terraform-NTP-Policy"           # Name of the NTP policy
ntp_policy_desc   = "Created via Terraform"          # Description of the NTP policy
ntp_enabled       = "true"                           # Enable NTP
ntp_servers       = ["8.8.8.8", "1.1.1.1"]            # List of NTP server IPs or hostnames
ntp_timezone      = "America/New_York"               # System timezone


########################################
# vMedia Policy
########################################
vmedia_policy_name            = "Terraform-vMedia-Policy"  # Name of the vMedia policy
vmedia_policy_desc            = "Created via Terraform"    # Description of the vMedia policy
vmedia_policy_enabled         = "true"                     # Enable vMedia
vmedia_policy_encryption      = "true"                     # Enable encryption for vMedia
vmedia_policy_low_power_usb   = "true"                     # Enable low power USB mode


########################################
# Boot Policy
########################################
boot_policy_name         = "Terraform-Boot-Policy"   # Name of the boot policy
boot_policy_desc         = "Created via Terraform"   # Description of the boot policy
boot_policy_mode         = "Uefi"                    # Boot mode (Uefi or Legacy)
boot_policy_secure_boot  = "true"                    # Enable Secure Boot


########################################
# Firmware Policy
########################################
firmware_policy_name         = "Terraform-Firmware-Policy"    # Name of the firmware policy
firmware_policy_desc         = "Created via Terraform"        # Description of the firmware policy
firmware_bundle_version      = "5.4(0.250044)"                # Firmware version to use
firmware_model_family        = "UCSX-210C-M8"                 # Target model family


########################################
# Thermal Policy
########################################
thermal_policy_name       = "Terraform-Thermal-Policy"  # Name of the thermal policy
thermal_policy_desc       = "Created via Terraform"     # Description of the thermal policy
thermal_policy_fanpolicy  = "Acoustic"                  # Fan control policy (e.g., Acoustic, Balanced)


########################################
# Access Policy / OOB IP Pool
########################################
access_policy_name            = "Terraform-IMCAccess-Policy"       # Name of the access policy
access_policy_desc            = "Created via Terraform"            # Description of the access policy

oob_ip_pool_name              = "Terraform-OOB-IP-Pool"            # Name of the Out-Of-Band IP pool
oob_ip_pool_desc              = "Created via Terraform"            # Description of the OOB IP pool
oob_ip_pool_first_ip          = "192.168.1.1"                      # First usable IP address
oob_ip_pool_gw                = "192.168.1.254"                    # Gateway for the subnet
oob_ip_pool_netmask           = "255.255.255.0"                    # Subnet mask
oob_ip_pool_primary_dns       = "1.1.1.1"                          # Primary DNS server
oob_ip_pool_secondary_dns     = "8.8.8.8"                          # Secondary DNS server
oob_ip_pool_size              = "24"                               # Size of the IP pool


########################################
# Syslog Policy
########################################
syslog_policy_name                     = "Terraform-Syslog-Policy"         # Name of the syslog policy
syslog_policy_desc                     = "Created via Terraform"           # Description of the syslog policy
syslog_policy_local_client_min_sev     = "emergency"                       # Local client minimum severity level
syslog_policy_remote_client_enabled    = "true"                            # Enable remote syslog
syslog_policy_remote_client_hostname   = "syslog-example-host.com"        # Remote syslog server hostname
syslog_policy_remote_client_min_severity = "emergency"                    # Remote client severity filter

########################################
# MAC Address Pool
########################################
mac_pool_a_name = "tf-mac-addr-pool-a"
mac_pool_a_starting_mac_addr = "00:25:B5:AA:96:00"
mac_pool_a_size = "1000"

mac_pool_b_name = "tf-mac-addr-pool-b"
mac_pool_b_starting_mac_addr = "00:25:B5:BB:96:00"
mac_pool_b_size = "1000"


########################################
# LAN Connectivity Policy
########################################
lan_connectivity_policy_name  = "Terraform-LANConn-Policy"  # Name of the LAN connectivity policy
lan_connectivity_policy_desc  = "Created via Terraform"     # Description of the LAN connectivity policy


########################################
# Ethernet Network Policy / Adapter / QoS
########################################
vnic_eth_network_policy_name  = "Terraform-Network-Policy"   # Name of the vNIC1 Ethernet network policy
vnic_vlans                     = 100                           # Default VLAN for vNIC

qos_policy_name                = "Terraform-QoS-Policy"        # QoS policy name
qos_policy_desc                = "Standard QoS Policy with MTU 9000"
qos_policy_mtu                 = 9000                          # MTU setting
qos_policy_class               = "Best Effort"                 # QoS class/priority

ethadapter_name                = "Terraform-Adapter-Policy"    # Adapter policy name
ethadapter_rss_enabled         = true                          # Enable Receive Side Scaling


########################################
# Ethernet Network Group Policy
########################################
eth_network_group_policy_name   = "Terraform-EthNetGrp-Policy"  # Name of Eth Network Group Policy
eth_network_group_policy_desc   = "Created via Terraform"       # Description


########################################
# vNIC 1 Configuration
########################################
vnic1_name                 = "vNIC1"        # Name of vNIC1
vnic1_order                = 0              # PCI order
vnic1_placement_id         = "MLOM"         # Placement (e.g., MLOM, Slot1)
vnic1_placement_uplink     = 2              # Uplink interface
vnic1_fabric               = "A"            # Fabric ID (A or B)


########################################
# vNIC 2 Configuration
########################################
vnic2_name                 = "vNIC2"        # Name of vNIC2
vnic2_order                = 1              # PCI order
vnic2_placement_id         = "MLOM"         # Placement (e.g., MLOM, Slot1)
vnic2_placement_uplink     = 1              # Uplink interface
vnic2_fabric               = "B"            # Fabric ID (A or B)
