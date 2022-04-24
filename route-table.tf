resource "oci_core_route_table" "route_table" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.develop.id

    #Optional
    display_name = "Private Route Table"
    route_rules {
        #Required
        network_entity_id = oci_core_nat_gateway.nat_gateway.id
        destination = "0.0.0.0/0"
    }
    
    route_rules {
        network_entity_id = oci_core_service_gateway.service_gateway.id
        destination = data.oci_core_services.service_gateway.services[0]["cidr_block"]
        destination_type = "SERVICE_CIDR_BLOCK"
    }
}

resource "oci_core_default_route_table" "this" {
  manage_default_resource_id = oci_core_subnet.public.route_table_id

  route_rules {
    #Required
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
    destination = "0.0.0.0/0"
  }
}