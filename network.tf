resource "oci_core_vcn" "develop" {
  dns_label      = "develop"
  cidr_block     = "172.17.0.0/16"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaajea2d2zmc7ofzfx53s72wseo5thj4pj4np23hvhlezrixxyqv22q"
  display_name   = "vcn-develop"
}