
header ethernet {
  EthernetAddress dstAddr;
  EthernetAddress srcAddr;
  bit<16>         etherType;
}

header vlan {
  bit<3> pcp;
  bit<1> cfi;
  bit<12> vid;
  bit<16> etherType;
}

header iPv4 {
  bit<4> version;
  bit<4> ihl;
  bit<8> diffserv;
  bit<16> totalLen;
  bit<16> identification;
  bit<3> flags;
  bit<13> fragOffset;
  bit<8> ttl;
  bit<8> protocol;
  bit<16> hdrChecksum;
  IPv4Address srcAddr;
  IPv4Address dstAddr;
}

header tcp{
  bit<32> seqN; \\sequence number
  bit<32> ackN: \\acknowledgment numer
  bit<4> dataOffset;
  bit<4> reserved;
  bit<8> flags;
  bit<16> window;
  bit<16> checksum;
  bit<16> urgentpointer;
  IPv4Address srcAddr;
  IPv4Address dstAddr;
}

header udp{
  bit<16> lenght;
  bit<16> checksum;
  IPv4Address srcAddr;
  IPv4Address dstAddr;
}


  

  
