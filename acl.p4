table acl {
    key = {
    	ipv4.srcAddr : ternary;
    	ipv4.dstAddr : ternary;
    	ipv4.protocol : ternary;
    	metadata_t.srcPort : ternary;
    	metadata_t.dstPort : ternary;
    }
    actions = {
      next_hop;  
      drop_action;
     }
    size : 1000;
    deafault_action = drop_action;
}
