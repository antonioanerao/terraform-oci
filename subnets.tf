resource "oci_core_subnet" "private" {
  vcn_id                      = oci_core_vcn.develop.id
  cidr_block                  = "172.17.0.0/24"
  compartment_id              = var.compartment_id
  display_name                = "Private Subnet"
  prohibit_public_ip_on_vnic  = true
  dns_label                   = "private"
}

resource "oci_core_subnet" "public" {
  vcn_id                      = oci_core_vcn.develop.id
  cidr_block                  = "172.17.1.0/24"
  compartment_id              = var.compartment_id
  display_name                = "Public Subnet"
  prohibit_public_ip_on_vnic  = false
  dns_label                   = "public"
}