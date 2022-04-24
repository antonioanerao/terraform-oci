output "vcn_state" {
  description = "The state of the VCN."
  value       = oci_core_vcn.develop.state
}

output "vcn_cidr" {
  description = "CIDR block of the core VCN"
  value       = oci_core_vcn.develop.cidr_block
}
output "services" {
  value = [data.oci_core_services.service_gateway.services]
}