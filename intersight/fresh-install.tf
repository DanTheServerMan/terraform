terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.66"
    }
  }
}

provider "intersight" {
  apikey    = var.intersight_api_key
  secretkey = "./key"
  endpoint  = "https://intersight.com"
}

data "intersight_organization_organization" "default" {
  name = "default"
}

##############################
# Pools
##############################

module "oob_ip_pool" {
  source = "./modules/management/oob-ip-pool"

  oob_ip_pool_name          = var.oob_ip_pool_name
  oob_ip_pool_desc          = var.oob_ip_pool_desc
  oob_ip_pool_size          = var.oob_ip_pool_size
  oob_ip_pool_first_ip      = var.oob_ip_pool_first_ip
  oob_ip_pool_gw            = var.oob_ip_pool_gw
  oob_ip_pool_netmask       = var.oob_ip_pool_netmask
  oob_ip_pool_primary_dns   = var.oob_ip_pool_primary_dns
  oob_ip_pool_secondary_dns = var.oob_ip_pool_secondary_dns
}

module "mac_pool_a" {
  source = "./modules/networking/mac-pool-a"

  mac_pool_a_name              = var.mac_pool_a_name
  mac_pool_a_starting_mac_addr = var.mac_pool_a_starting_mac_addr
  mac_pool_a_size              = var.mac_pool_a_size
}

module "mac_pool_b" {
  source = "./modules/networking/mac-pool-a"

  mac_pool_a_name              = var.mac_pool_b_name
  mac_pool_a_starting_mac_addr = var.mac_pool_b_starting_mac_addr
  mac_pool_a_size              = var.mac_pool_b_size
}

##############################
# Policies
##############################

module "thermal_policy" {
  source                   = "./modules/management/thermal-policy"
  thermal_policy_name      = var.thermal_policy_name
  thermal_policy_desc      = var.thermal_policy_desc
  thermal_policy_fanpolicy = var.thermal_policy_fanpolicy
}

module "boot_policy" {
  source                  = "./modules/management/boot-policy"
  boot_policy_name        = var.boot_policy_name
  boot_policy_desc        = var.boot_policy_desc
  boot_policy_mode        = var.boot_policy_mode
  boot_policy_secure_boot = var.boot_policy_secure_boot
}

module "ntp_policy" {
  source           = "./modules/management/ntp-policy"
  ntp_policy_name  = var.ntp_policy_name
  ntp_policy_desc  = var.ntp_policy_desc
  ntp_enabled      = var.ntp_enabled
  ntp_servers      = var.ntp_servers
  ntp_timezone     = var.ntp_timezone
}

module "vmedia_policy" {
  source                      = "./modules/management/vmedia-policy"
  vmedia_policy_name          = var.vmedia_policy_name
  vmedia_policy_desc          = var.vmedia_policy_desc
  vmedia_policy_enabled       = var.vmedia_policy_enabled
  vmedia_policy_encryption    = var.vmedia_policy_encryption
  vmedia_policy_low_power_usb = var.vmedia_policy_low_power_usb
}

module "firmware_policy" {
  source                  = "./modules/management/firmware-policy"
  firmware_policy_name    = var.firmware_policy_name
  firmware_policy_desc    = var.firmware_policy_desc
  target_platform         = var.target_platform
  firmware_bundle_version = var.firmware_bundle_version
  firmware_model_family   = var.firmware_model_family
}

module "access_policy" {
  source             = "./modules/management/access-policy"
  access_policy_name = var.access_policy_name
  access_policy_desc = var.access_policy_desc
  oob_ip_pool_moid   = module.oob_ip_pool.moid
}

module "syslog_policy" {
  source                                   = "./modules/management/syslog-policy"
  syslog_policy_name                       = var.syslog_policy_name
  syslog_policy_desc                       = var.syslog_policy_desc
  syslog_policy_local_client_min_sev       = var.syslog_policy_local_client_min_sev
  syslog_policy_remote_client_enabled      = var.syslog_policy_remote_client_enabled
  syslog_policy_remote_client_hostname     = var.syslog_policy_remote_client_hostname
  syslog_policy_remote_client_min_severity = var.syslog_policy_remote_client_min_severity
}

module "lan_connectivity_policy" {
  source                       = "./modules/networking/lan-con-policy"
  lan_connectivity_policy_name = var.lan_connectivity_policy_name
  lan_connectivity_policy_desc = var.lan_connectivity_policy_desc
  target_platform              = var.target_platform
}

module "eth_network_group_policy" {
  source                        = "./modules/networking/eth-network-group-policy"
  eth_network_group_policy_name = var.eth_network_group_policy_name
  eth_network_group_policy_desc = var.eth_network_group_policy_desc
  vnic_vlans                    = var.vnic_vlans
}

module "eth_network_policy" {
  source                        = "./modules/networking/eth-network-policy"
  vnic_eth_network_policy_name  = var.vnic_eth_network_policy_name
  vnic_vlans                    = var.vnic_vlans
}

module "eth_qos_policy" {
  source           = "./modules/networking/eth-qos-policy"
  qos_policy_name  = var.qos_policy_name
  qos_policy_desc  = var.qos_policy_desc
  qos_policy_mtu   = var.qos_policy_mtu
  qos_policy_class = var.qos_policy_class
}

module "eth_adapter_policy" {
  source                 = "./modules/networking/eth-adapter-policy"
  ethadapter_name        = var.ethadapter_name
  ethadapter_rss_enabled = var.ethadapter_rss_enabled
}

##############################
# vNIC Configuration
##############################

module "vnic1" {
  source = "./modules/networking/vnic-policy"

  vnic_name                     = var.vnic1_name
  vnic_order                    = var.vnic1_order
  mac_pool_moid                 = module.mac_pool_a.moid
  placement_id                  = var.vnic1_placement_id
  placement_uplink              = var.vnic1_placement_uplink
  fabric                        = var.vnic1_fabric
  lan_connectivity_policy_moid  = module.lan_connectivity_policy.moid
  eth_network_policy_moid       = module.eth_network_policy.moid
  eth_adapter_policy_moid       = module.eth_adapter_policy.moid
  eth_qos_policy_moid           = module.eth_qos_policy.moid
  eth_network_group_policy_moid = module.eth_network_group_policy.moid
}

module "vnic2" {
  source = "./modules/networking/vnic-policy"

  vnic_name                     = var.vnic2_name
  vnic_order                    = var.vnic2_order
  mac_pool_moid                 = module.mac_pool_b.moid
  placement_id                  = var.vnic2_placement_id
  placement_uplink              = var.vnic2_placement_uplink
  fabric                        = var.vnic2_fabric
  lan_connectivity_policy_moid  = module.lan_connectivity_policy.moid
  eth_network_policy_moid       = module.eth_network_policy.moid
  eth_adapter_policy_moid       = module.eth_adapter_policy.moid
  eth_qos_policy_moid           = module.eth_qos_policy.moid
  eth_network_group_policy_moid = module.eth_network_group_policy.moid
}

##############################
# Server Profile Template
##############################

module "server_profile_template" {
  source = "./modules/server-profile-template"

  name            = var.server_profile_template_name
  description     = var.server_profile_template_desc
  target_platform = var.target_platform

  organization_moid            = data.intersight_organization_organization.default.moid
  boot_policy_moid             = module.boot_policy.moid 
  ntp_policy_moid              = module.ntp_policy.ntp_policy_moid
  vmedia_policy_moid           = module.vmedia_policy.moid
  firmware_policy_moid         = module.firmware_policy.moid
  thermal_policy_moid          = module.thermal_policy.moid
  access_policy_moid           = module.access_policy.moid
  syslog_policy_moid           = module.syslog_policy.moid
  lan_connectivity_policy_moid = module.lan_connectivity_policy.moid
}