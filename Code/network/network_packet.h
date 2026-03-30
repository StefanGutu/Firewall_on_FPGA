#ifndef NETWORK_PACKET_H_
#define NETWORK_PACKET_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <arpa/inet.h>

#include <sys/socket.h>
#include <linux/netlink.h>
#include <linux/ip.h> 
#include <netinet/tcp.h>
#include <netinet/udp.h>
#include <fcntl.h> 

#include <linux/netfilter.h>
#include <linux/netfilter/nfnetlink.h>
#include <linux/netfilter/nfnetlink_queue.h>

#include "../message/message_parser.h"
#include "../spoofing/anti_spoofing.h"
#include "websocket_adpt.h"

#define MASK_FEEDBACK 0x3
#define VALID_RESPONSE 0x3
#define QUEUE_INBOUND 1
#define QUEUE_OUTBOUND 0

#define NLA_PAYLOAD(nla) ((int)((nla)->nla_len - NLA_HDRLEN))
typedef struct {
    dma_data_transfer data;
    uint32_t packet_id;
    uint16_t ip_len;
    unsigned char *ip_packet;
} packet_info_t;


typedef struct {
    struct nlmsghdr nlh;                                                                                        //netlink header (header global)                                                              
    struct nfgenmsg nfg;                                                                                        //mesaj    (headerl netfilter )
    struct nlattr nla;                                                                                          //atribut
    struct nfqnl_msg_config_cmd cmd;                                                                            //Comanda de bind sau unbind
}netlink_config_data_pid_to_nfqueue;

typedef struct {
    struct nlmsghdr nlh;
    struct nfgenmsg nfg;
    struct nlattr nla;
    struct nfqnl_msg_config_params params;
}netlink_data_set_copy_mode;

typedef struct {
    struct nlmsghdr nlh;
    struct nfgenmsg nfg;
    struct nlattr nla;
    struct nfqnl_msg_verdict_hdr vh;
}netlink_data_response_back;

int                         init_netlink_socket();                                                             //Init socket for  Netfilter connection between userspace and kernel
void                        recive_netlink_packet(int netlink_socket);                                         //Function to recive a packet 
void                        close_netlink_socket(int sock);

#endif