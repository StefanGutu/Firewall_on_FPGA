#include "../network/network_packet.h"
// #include "../control/rule_maker.h"
// #include "../message/message_parser.h"

int main(){
    int netlink_socket = init_netlink_socket();
    recive_netlink_packet(netlink_socket);

    while(1){
        recive_netlink_packet(netlink_socket);
        sleep(2);
    }


    // init_rule_space();
    // write_rule();
    // read_rules();
    // close_rule_space();

    // dma_data_transfer data;
    // init_dma();
    // data.src_ip = 0x0101A8C0;
    // data.dst_ip = 0x0201A8C0;
    // data.dst_port = 0x0000901F;
    // data.message_id = 1;
    // data.protocol = 0x00000045;
    // send_data_to_dma(data);
    // data.src_ip = 0x0101A8C1;
    // data.dst_ip = 0x0201A8C1;
    // data.message_id++;
    // data.protocol = 0x00000045;
    // send_data_to_dma(data);
    // data.src_ip = 0x0101A8C2;
    // data.dst_ip = 0x0201A8C2;
    // data.message_id++;
    // data.protocol = 0x00000045;
    // send_data_to_dma(data);
    return 0;
}
