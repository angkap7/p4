parser MyParser(packet_in packet,
                out headers hdr, 
                inout metadata meta){
  state start{
    transistion parse_ethernet;
    }
    
  state parse_ethernet{
    packet.extract(hdr.ethernet);
    transition select(hdr.ethernet.etherType) {
           Ethertype_VLAN: parse_vlan;
           default: accept;
       }
   }    
   
   state parse_vlan
