header_type intrinsic_metadata_t{
  bit<4> mcast_group; //multicast group id (key for the multicast replication table)
  bit<4> egress_rid; //replication ID for multicast
  bit<16> mcast_hash; // multicast hashing
  bit<32> lf_field_list; // learn filter field list
}

header_type metadata_t{
  bit<16> srcPort;
  bit<16> dstPort;
}
