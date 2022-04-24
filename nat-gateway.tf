resource "oci_core_nat_gateway" "nat_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.develop.id
}