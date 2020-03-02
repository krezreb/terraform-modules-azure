variable "name" {
  description = "Name of storage account, if it contains illigal characters (,-_ etc) those will be truncated."
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "Azure location where resources should be deployed."
}

variable "machine_size" {
  description = "Instance size, see https://azureprice.net/."
  default     = "Standard_B1ls"
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
}

variable "linux_distribution" {
  description = "OS to use, (debian10,ubuntu18lts,centos7) image, see `az vm image list`"
  default     = "debian10"
}

variable "public_key_file" {
  type = string
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
  description = "Should wite acceleration be enabled for /data disk.  Defaults to false"
  default     = false
}

variable "install_blobfuse" {
  description = "Should blobfuse be installed?  Defaults to false"
  default     = false
}

variable "install_docker" {
  description = "Should docker + docker-compose be installed?  Defaults to false"
  default     = false
}

