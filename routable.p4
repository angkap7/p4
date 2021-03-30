action route() {
}

table routable {
    keys = {
    	ethernet.srcAddr : exact;
      ethernet.dstAddr : exact;
      vlan.vid         : exact;
    }
    actions = {route; next_hop;}
    size = 64;
}
