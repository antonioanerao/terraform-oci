variable "compartment_id" {
  description = "OCID from your tenancy page"
  type        = string
}

variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "us-ashburn-1"
}

variable "internet_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to Internet Gateway Route Table"
  type        = list(map(string))
  default     = null
}

variable "nat_gateway_route_rules" {
  description = "(Updatable) list of routing rules to add to NAT Gateway Route Table"
  type        = list(map(string))
  default     = null
}

variable "config_profile" {
  description = "profile to authenticate"
  type        = string
}