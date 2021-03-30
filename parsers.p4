parser MyParser(packet_in packet,
                out headers hdr, 
                inout metadata meta){
  state start{
    transistion parse_ethernet;
    }
    
  state parse_ethernet{
    packet.extract(hdr.ethernet);
    transition select(hdr.ethernet.etherType) {
           ETHERTYPE_VLAN: parse_vlan;
           default: accept;
       }
   }    
   
   state parse_vlan{
    packet.extract(hdr.vlan);
    transition select(hdr.vlan.etherType) {
    IP_PROTOCOLS_IPHL_TCP  : parse_tcp;
    IP_PROTOCOLS_IPHL_UDP  : parse_udp;
    default: accept;
    }
   }
   
   state parse_tcp{
    packet.extract(hdr.tcp){
    set_metadata(l4_metadata_.srcPort, tcp.srcPort); //?????? p4_16
    set_metadata(l4_metadata_.dstPort, tcp.dstPort); //???
    transition accept;
   }
   
   state parse_udp{
    packet.extract(hdr.udp){
    set_metadata(l4_metadata_.srcPort, udp.srcPort); //?????? p4_16
    set_metadata(l4_metadata_.dstPort, udp.dstPort); //???
    transition accept;
   }
