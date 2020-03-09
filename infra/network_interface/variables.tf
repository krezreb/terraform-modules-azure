variable "name" {
  description = "Name of resource group to deploy resources in."
}

variable "location" {
  description = "Location to deploy resources in."
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "rspath_subnet" {
  description = "Remote state key of the subnet."
}

variable "rspath_resource_group" {
  description = "Remote state key of resource group to deploy resources in."
}

variable "rspath_application_security_group" {
  description = "Optional Remote state key of application security group to associate to NIC."
  default     = ""
}

variable "rspath_network_security_group" {
  description = "Optional Remote state key of network security group to associate to NIC."
  default     = ""
}

variable "assign_public_ip" {
  description = "Should a public ip be allocated to the network interface."
  type        = bool
  default     = true
}

variable "private_ip_address_allocation" {
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
  default     = "Dynamic"
}

# WIP
variable "private_ip_address" {
  description = "If private_ip_address_allocation is set to Static, specify IP here"
  default     = ""
}