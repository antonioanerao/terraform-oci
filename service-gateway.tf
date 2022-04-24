data "oci_core_services" "service_gateway" {
filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}
resource "oci_core_service_gateway" "service_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.develop.id

    services {
        #Required
        service_id = data.oci_core_services.service_gateway.services.0.id
    }
}