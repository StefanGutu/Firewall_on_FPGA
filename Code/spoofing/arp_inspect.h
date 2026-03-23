#ifndef ARP_INSPECT_H_
#define ARP_INSPECT_H_

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <unistd.h>

#include <linux/if_ether.h>   // struct ethhdr
#include <linux/if_packet.h>  // AF_PACKET, sockaddr_ll
#include <net/ethernet.h>     // ETH_P_ARP

#include <sys/socket.h>
#include <sys/types.h>

#include <arpa/inet.h>

#define MAX_BLACK_LIST  32
#define MAX_ARP_ENTRIES 32
#define MAX_ARP_CHANGES 3

#define MAX_CHANGES_MAC 2

#define ARP_DETECT_TRUST_BROKEN_MAC 40
#define ARP_DETECT_TRUST_BROKEN_IP  41
#define ARP_DETECT_MAX_CHANGE       42
#define ARP_DETECT_PRESENT_ELEM     43
#define ARP_DETECT_NOTHING          0

typedef struct arp_elem{
    time_t last_seen;
    int change_counter;
    uint32_t ip;
    uint8_t mac[6];
    uint8_t trust;
}arp_elem_t;

struct arp_header {
    uint16_t hw_type;      //2 bytes
    uint16_t proto_type;   //2 bytes
    uint8_t  hw_len;       //1 byte
    uint8_t  proto_len;    //1 byte
    uint16_t opcode;       //2 bytes
    uint8_t  src_mac[6];   //6 bytes
    uint32_t src_ip;       //4 bytes
    uint8_t  dst_mac[6];   //6 bytes
    uint32_t dst_ip;       //4 bytes
} __attribute__((packed));

typedef struct message_type{
    struct ethhdr eth_header;
    struct arp_header arp_payload;
}__attribute__((packed)) message_type_t;

int init_arp_inspect();                     //makes a socket and returns it's value to be able to use it later on
int save_arp_table();
int check_arp_table(int socket);

#endif