############################
# Env Vars
############################
# export TF_VAR_intersight_api_key=''

variable "intersight_api_key" {
  description = "API key created in Intersight"
  type        = string
}

############################
# Global Configuration
############################

variable "organization" {
  description = "Name of the Intersight organization where policies and profiles are created"
  type        = string
  default     = "default"
}

variable "target_platform" {
  description = "Target hardware platform for the profile (e.g., FID, UCSX, UCSB)"
  type        = string
}


############################
# Server Profile Template
############################

variable "server_profile_template_name" {
  description = "Name of the server profile template"
  type        = string
}

variable "server_profile_template_desc" {
  description = "Description of the server profile template"
  type        = string
}


############################
# NTP Policy
############################

variable "ntp_policy_name" {
  description = "Name of the NTP policy"
  type        = string
}

variable "ntp_policy_desc" {
  description = "Description of the NTP policy"
  type        = string
}

variable "ntp_enabled" {
  description = "Whether NTP is enabled (true/false as string)"
  type        = string
}

variable "ntp_timezone" {
  description = "Timezone to configure in the NTP policy (e.g., UTC, PST)"
  type        = string
}

variable "ntp_servers" {
  description = "List of NTP server IP addresses or hostnames"
  type        = list(string)
}


############################
# vMedia Policy
############################

variable "vmedia_policy_name" {
  description = "Name of the vMedia policy"
  type        = string
}

variable "vmedia_policy_desc" {
  description = "Description of the vMedia policy"
  type        = string
}

variable "vmedia_policy_enabled" {
  description = "Whether vMedia is enabled (true/false as string)"
  type        = string
}

variable "vmedia_policy_encryption" {
  description = "Encryption setting for vMedia (e.g., 'enabled', 'disabled')"
  type        = string
}

variable "vmedia_policy_low_power_usb" {
  description = "Enable or disable low power USB mode for vMedia"
  type        = string
}


############################
# Boot Policy
############################

variable "boot_policy_name" {
  description = "Name of the boot policy"
  type        = string
}

variable "boot_policy_desc" {
  description = "Description of the boot policy"
  type        = string
}

variable "boot_policy_mode" {
  description = "Boot mode (e.g., 'Legacy', 'UEFI')"
  type        = string
}

variable "boot_policy_secure_boot" {
  description = "Whether Secure Boot is enabled (true/false as string)"
  type        = string
}


############################
# Firmware Policy
############################

variable "firmware_policy_name" {
  description = "Name of the firmware policy"
  type        = string
}

variable "firmware_policy_desc" {
  description = "Description of the firmware policy"
  type        = string
}

variable "firmware_bundle_version" {
  description = "Version of the firmware bundle to apply"
  type        = string
}

variable "firmware_model_family" {
  description = "Model family the firmware policy applies to (e.g., UCSX-210C-M6)"
  type        = string
}


############################
# Thermal Policy
############################

variable "thermal_policy_name" {
  description = "Name of the thermal policy"
  type        = string
}

variable "thermal_policy_desc" {
  description = "Description of the thermal policy"
  type        = string
}

variable "thermal_policy_fanpolicy" {
  description = "Fan policy to apply (e.g., 'Balanced', 'HighPower')"
  type        = string
}


############################
# Access Policy / OOB Management
############################

variable "access_policy_name" {
  description = "Name of the access policy"
  type        = string
}

variable "access_policy_desc" {
  description = "Description of the access policy"
  type        = string
}

variable "oob_ip_pool_name" {
  description = "Name of the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_desc" {
  description = "Description of the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_gw" {
  description = "Default gateway for the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_netmask" {
  description = "Subnet mask for the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_primary_dns" {
  description = "Primary DNS server for OOB IP configuration"
  type        = string
}

variable "oob_ip_pool_secondary_dns" {
  description = "Secondary DNS server for OOB IP configuration"
  type        = string
}

variable "oob_ip_pool_size" {
  description = "Number of IP addresses in the OOB IP pool"
  type        = string
}

variable "oob_ip_pool_first_ip" {
  description = "First IP address in the OOB IP pool range"
  type        = string
}


############################
# Syslog Policy
############################

variable "syslog_policy_name" {
  description = "Name of the Syslog policy"
  type        = string
}

variable "syslog_policy_desc" {
  description = "Description of the Syslog policy"
  type        = string
}

variable "syslog_policy_local_client_min_sev" {
  description = "Minimum severity level for local syslog client"
  type        = string
}

variable "syslog_policy_remote_client_enabled" {
  description = "Enable or disable remote syslog client (true/false as string)"
  type        = string
}

variable "syslog_policy_remote_client_hostname" {
  description = "Hostname or IP address of the remote syslog server"
  type        = string
}

variable "syslog_policy_remote_client_min_severity" {
  description = "Minimum severity level for remote syslog client"
  type        = string
}

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

variable "mac_pool_b_name" {
  description = "Name of the B-side MAC address pool"
  type        = string
}

variable "mac_pool_b_starting_mac_addr" {
  description = "First MAC pool address"
  type        = string
}

variable "mac_pool_b_size" {
  description = "Size of the MAC address pool"
  type        = string
}


############################
# LAN Connectivity Policy
############################

variable "lan_connectivity_policy_name" {
  description = "Name of the LAN connectivity policy"
  type        = string
}

variable "lan_connectivity_policy_desc" {
  description = "Description of the LAN connectivity policy"
  type        = string
}


############################
# vNIC Network & Adapter Policies
############################

variable "vnic_eth_network_policy_name" {
  description = "Name of the Ethernet network policy for vNIC1"
  type        = string
}

variable "vnic_vlans" {
  description = "Default VLAN ID for the Ethernet network policy"
  type        = number
}

variable "eth_network_group_policy_name" {
  description = "Name of the Ethernet Network Group Policy"
  type        = string
}

variable "eth_network_group_policy_desc" {
  description = "Description of the Ethernet Network Group Policy"
  type        = string
}

variable "qos_policy_name" {
  description = "Name of the Quality of Service (QoS) policy"
  type        = string
}

variable "qos_policy_desc" {
  description = "Description of the QoS policy"
  type        = string
}

variable "qos_policy_mtu" {
  description = "Maximum Transmission Unit (MTU) for the QoS policy"
  type        = number
}

variable "qos_policy_class" {
  description = "QoS priority class (e.g., 'best-effort', 'platinum')"
  type        = string
}

variable "ethadapter_name" {
  description = "Name of the Ethernet Adapter policy"
  type        = string
}

variable "ethadapter_rss_enabled" {
  description = "Enable or disable Receive Side Scaling (RSS) on the adapter"
  type        = bool
}


############################
# vNIC Interface Configuration
############################

variable "vnic1_name" {
  description = "Name of the first vNIC (vNIC1)"
  type        = string
}

variable "vnic2_name" {
  description = "Name of the second vNIC (vNIC2)"
  type        = string
}

variable "vnic1_order" {
  description = "PCI order for vNIC1"
  type        = string
}

variable "vnic2_order" {
  description = "PCI order for vNIC2"
  type        = string
}

variable "vnic1_placement_id" {
  description = "Placement ID for vNIC1"
  type        = string
}

variable "vnic1_placement_uplink" {
  description = "Uplink index for vNIC1 (typically 0 or 1)"
  type        = number
}

variable "vnic1_fabric" {
  description = "Fabric assignment for vNIC1 ('A' or 'B')"
  type        = string
}

variable "vnic2_placement_id" {
  description = "Placement ID for vNIC2"
  type        = string
}

variable "vnic2_placement_uplink" {
  description = "Uplink index for vNIC2 (typically 0 or 1)"
  type        = number
}

variable "vnic2_fabric" {
  description = "Fabric assignment for vNIC2 ('A' or 'B')"
  type        = string
}
