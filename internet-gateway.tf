resource "oci_core_internet_gateway" "internet_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.develop.id

    #Optional
    enabled =    true
    display_name = "IG"
}