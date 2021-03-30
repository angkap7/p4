
action strip_vlan() {
    modify_field(ethernet.etherType, vlan.etherType); //?
    remove_header(vlan); //?
}

table vlan_egress_proc {
    keys = {
        standard_metadata.egress_spec : exact;
    }
    actions =  {strip_vlan; _nop;}
    size = 64;
}
