variable "name" {
  description = "Name of storage account, if it contains illigal characters (,-_ etc) those will be truncated."
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "machine_size" {
  description = "Instance size, see https://azureprice.net/."
  default     = "Standard_B1ls"
}

# variable "priority" {
#   description = "(Optional) Specifies the priority of this Virtual Machine. Possible values are Regular and Spot. Defaults to Regular"
#   default = "Regular"
# }

variable "spot_max_bid_price" {
  description = "(Optional) The maximum price you're willing to pay for this Virtual Machine, in US Dollars; See https://azureprice.net/?currency=USD&priority=true"
  default     = -1
  type        = number
}

variable "spot_eviction_policy" {
  description = "(Optional) Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance."
  default     = "Deallocate"
}

variable "rspath_resource_group" {
  description = "Remote state key of resource group to deploy resources in."
  type        = string
}

variable "rspath_network_interfaces" {
  description = "Remote state key of one or more network interfaces to attach to VM."
  type        = list(string)
}

variable "rspath_managed_disks" {
  description = "List of Remote state key of managed disks to attach to VM."
  type        = list(string)
  default     = []
}

variable "linux_distribution" {
  description = "OS to use, (debian10,ubuntu18lts,centos7) image, see `az vm image list`"
  default     = "debian10"
}

variable "ssh_user" {
  description = "ssh username to use to sign in"
  default     = "automation"
}

variable "public_key_file" {
  description = "rsa key to use to sign in"
  type        = string
}

variable "os_disk_caching" {
  default = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  default = "Standard_LRS"
}

variable "os_disk_write_accelerator_enabled" {
  default = false
}

variable "ultra_ssd_enabled" {
  description = "Should the capacity to enable Data Disks of the UltraSSD_LRS storage account type be supported on this Virtual Machine? Defaults to false"
  default     = false
}

variable "data_disk_write_accelerator" {
  description = "Should write acceleration be enabled for /data disk.  Defaults to false"
  default     = false
}

variable "enable_system_assigned_managed_identity" {
  description = "Should System assigned managed identity be enabled?  Defaults to true.  See https://docs.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview"
  default     = true
}

variable "custom_machine_extensions" {
  description = "Optional list of additional machine extension files"
  default     = []
  type        = list(string)
}

variable "swap_size_mb" {
  description = "Optional swap size, in megabytes, to enable.  Default is 0 (no swap)"
  default     = 0
}

variable "swap_file" {
  description = "Path to swapfile (if swap_size_gb > 0)"
  default     = "/swapfile"
}

variable "install_blobfuse" {
  description = "Should blobfuse be installed?  Defaults to false"
  default     = false
}

variable "install_docker" {
  description = "Should docker + docker-compose be installed?  Defaults to false"
  default     = false
}

variable "install_fail2ban" {
  description = "Should fail2ban be installed with ssh filters?  Defaults to false"
  default     = false
}

variable "install_python3" {
  description = "Should python3 and pip be installed?  Defaults to false"
  default     = false
}


variable "install_azcli" {
  description = "Should the azure cli be installed?  Defaults to false"
  default     = false
}

variable "install_cifs" {
  description = "Should the cifs (samba)  client be installed?  Defaults to false"
  default     = false
}
