action add_vlan() {
    add_header(vlan);
    modify_field(vlan.etherType, ethernet.etherType);//?
    modify_field(ethernet.etherType, ETHERTYPE_VLAN);//?
}

table vlan_ingress_proc {
    keys = {
    	standard_metadata.ingress_port : exact;
    	vlan	  					   : valid;
      vlan.vid 					   : exact;
    }
    actions = {add_vlan; next_hop;}
    size = 64;
}
