# DanTheServerMan - Terraform Scripts

This is the repository for any and all Terraform projects associated with dantheserverman.com, or my homelab. Therefore, the scripts will be more tailored towards that use case. 

## **ProxMox**
This Terraform implementation uses the API and a dedicated user. The variable 'pve_api_token_secret' is not defined in a file, as I used an enviroment variable to avoid writing a API key to a plaintext file. You can find guides on how to configure this user/API permissions here: https://dantheserverman.com/2025/01/18/how-to-setup-api-access-in-proxmox/ 

### Files 
**example-terraform.tfvars** - This is an example vars file. It will have the variables you need to fill out to run a script. Some variables may have a generic value already, as I found it unlikely all variables would be changed between uses. You should copy this file and name it "terraform.tfvars", as the script(s) look for that file. In addition, *terraform.tfvars* is git ignore'd.

### Scripts
**deploy-vm-cloudinit** - This will deploy any number of VMs from a preconfigured cloudinit. Once your template is setup, this will allow you to rapidly build and teardown VMs. Since it uses cloudinit, they should already be IP'd (DHCP) and ready to access remotely. All variables such as ISOs, datastores, RAM, cores, etc. must be defined in the terraform.tfvars file.

Further guidance on how to use this script is here: https://dantheserverman.com/2025/01/18/terraform-cloudinit-proxmox/ 

NOTE: This performs a clone operation, if you are deploying many VMs you may get an error such as "TASK ERROR: clone failed: cfs-lock 'datastore' error: got lock request timeout'", and your 'terraform apply' will fail. If this happens, just reapply the changes, and it will finish. This error can be due to ProxMox not allowing so many disk clone operations in parallel.

**deploy-basic-lxc** - This deploys basic, unpriv containers using a container template that you should already have downloaded. All variables such as ISOs, datastores, RAM, cores, etc. must be defined in the terraform.tfvars file.

## **Intersight**
All Intersight scripts are currently in development and not for use.

**server-profile-template.tf** - This script is intended to call specific modules under ```modules/```. These modules are meant to complete a basic Intersight server profile template. All of the configuration specifics should be in in ```example-terraform.tfvars```. You should copy this file, rename it to ```terraform.tfvars```, and add your configuration as needed. 
