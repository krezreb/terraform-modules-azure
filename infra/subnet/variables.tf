variable "name" {
  description = "Name of resource group to deploy resources in."
}

variable "rspath_virtual_network" {
  description = "Remote state key of the virtual network."
}

variable "rspath_resource_group" {
  description = "Remote state key of resource group to deploy resources in."
}

variable "address_space" {
  description = "CIDR of subnet. e.g. 10.0.1.0/24"
  default     = "10.0.1.0/24"
}

variable "enforce_private_link_endpoint_network_policies" {
  description = "Enable or Disable network policies for the private link endpoint on the subnet. Default valule is false. Conflicts with enforce_private_link_service_network_policies.  See https://www.terraform.io/docs/providers/azurerm/r/subnet.html#enforce_private_link_endpoint_network_policies"
  default     = false
}

variable "enforce_private_link_service_network_policies" {
  description = "Enable or Disable network policies for the private link service on the subnet. Default valule is false. Conflicts with enforce_private_link_endpoint_network_policies.  See https://www.terraform.io/docs/providers/azurerm/r/subnet.html#enforce_private_link_service_network_policies"
  default     = false
}

variable "service_endpoints" {
  description = "list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory. See https://www.terraform.io/docs/providers/azurerm/r/subnet.html#service_endpoints"
  default     = []
}

variable "delegations" {
  description = "list of delegations to associate with the subnet.See https://www.terraform.io/docs/providers/azurerm/r/subnet.html#delegation"
  type        = list(map(any))
  default     = []
}