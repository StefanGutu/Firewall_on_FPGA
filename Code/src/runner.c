#include "../network/network_packet.h"
#include "../control/rule_maker.h"

int main(){

    //ex pt network

    init_rule_space();
    write_rule();
    read_rules();
    close_rule_space();

    int netlink_socket = init_netlink_socket();
    while(1){
        recive_netlink_packet(netlink_socket);
    }

    return 0;
}
