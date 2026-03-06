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
#include <fcntl.h> 

#include <linux/netfilter.h>
#include <linux/netfilter/nfnetlink.h>
#include <linux/netfilter/nfnetlink_queue.h>

#include "message_parser.h"


#define NLA_PAYLOAD(nla) ((int)((nla)->nla_len - NLA_HDRLEN))

typedef struct {
    dma_data_transfer data;
    const unsigned char *payload;
    uint16_t payload_len;
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
void                        recive_netlink_packet();                                                           //Function to recive a packet 


#endif