//   Test 1 — IP nou + MAC nou
//   Test 2 — Acelasi IP nou, MAC schimbat de 3 ori
//   Test 3 — IP original (TARGET_IP) cu MAC modificat
//   Test 4 — 5 IP-uri diferite cu 5 MAC-uri care se rotesc intre ele de 3 ori

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <net/ethernet.h>
#include <net/if.h>

#define INTERFACE   "enp8s0"
#define TARGET_IP   "192.168.1.10"   // host cunoscut,
#define NEW_IP      "192.168.1.55"   // host nou

struct arp_header {
    uint16_t hw_type;
    uint16_t proto_type;
    uint8_t  hw_len;
    uint8_t  proto_len;
    uint16_t opcode;
    uint8_t  src_mac[6];
    uint32_t src_ip;
    uint8_t  dst_mac[6];
    uint32_t dst_ip;
} __attribute__((packed));

typedef struct {
    struct ethhdr     eth_header;
    struct arp_header arp_payload;
} __attribute__((packed)) message_type_t;

//ARP Reply 
void send_arp(int sock, const char *ip_str, uint8_t *mac, const char *label){
    printf("  %-50s | IP: %-16s | MAC: %02x:%02x:%02x:%02x:%02x:%02x\n",label, ip_str,mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

    message_type_t packet;
    memset(&packet, 0, sizeof(packet));

    memset(packet.eth_header.h_dest,   0xff, 6);
    memcpy(packet.eth_header.h_source, mac,  6);
    packet.eth_header.h_proto = htons(ETH_P_ARP);

    packet.arp_payload.hw_type    = htons(1);
    packet.arp_payload.proto_type = htons(0x0800);
    packet.arp_payload.hw_len     = 6;
    packet.arp_payload.proto_len  = 4;
    packet.arp_payload.opcode     = htons(2);
    memcpy(packet.arp_payload.src_mac, mac, 6);
    inet_pton(AF_INET, ip_str, &packet.arp_payload.src_ip);

    struct sockaddr_ll saddr;
    memset(&saddr, 0, sizeof(saddr));
    saddr.sll_family   = AF_PACKET;
    saddr.sll_protocol = htons(ETH_P_ARP);
    saddr.sll_ifindex  = if_nametoindex(INTERFACE);

    if(saddr.sll_ifindex == 0){
        printf("ERROR: interfata %s nu a fost gasita\n", INTERFACE);
        return;
    }
    if(sendto(sock, &packet, sizeof(packet), 0,(struct sockaddr *)&saddr, sizeof(saddr)) < 0){
        perror("sendto");
    }
}

int main(){
    int sock = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ARP));
    if (sock < 0){
        printf("ERROR: nu pot deschide socket (esti root?)\n");
        return -1;
    }

    //TEST 1: IP nou + MAC nou 
    uint8_t mac_new[6] = {0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0x01};
    printf("TEST 1: IP nou + MAC nou\n");
    send_arp(sock, NEW_IP, mac_new, "IP nou, MAC initial");
    sleep(2);

    //TEST 2: Acelasi IP nou, MAC schimbat de 3 ori
    uint8_t mac_change_1[6] = {0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0x02};
    uint8_t mac_change_2[6] = {0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0x03};
    uint8_t mac_change_3[6] = {0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0x04};
    uint8_t mac_change_4[6] = {0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0x05};

    printf("TEST 2: Acelasi IP nou (%s), MAC schimbat de 3 ori\n", NEW_IP);
    send_arp(sock, NEW_IP, mac_change_1, "schimbare MAC #1 -> change_counter=1");
    sleep(1);
    send_arp(sock, NEW_IP, mac_change_2, "schimbare MAC #2 -> change_counter=2 -> BLOCARE");
    sleep(1);
    send_arp(sock, NEW_IP, mac_change_3, "schimbare MAC #3 -> change_counter=3 -> BLOCARE");
    sleep(1);
    send_arp(sock, NEW_IP, mac_change_4, "schimbare MAC #4 -> in_blacklist() -> skip ebtables");
    sleep(2);

    //TEST 3: IP original cu MAC modificat
    uint8_t mac_target_fake[6] = {0xFF, 0xEE, 0xDD, 0xCC, 0xBB, 0x01};
    printf("TEST 3: IP original TARGET_IP cu MAC fals\n");
    send_arp(sock, TARGET_IP, mac_target_fake, "TARGET_IP + MAC fals");
    sleep(2);

    //TEST 4: 5 IP-uri cu 5 MAC-uri care se rotesc intre ele de 3 ori
    const char *ips[5] = {
        "192.168.1.61",
        "192.168.1.62",
        "192.168.1.63",
        "192.168.1.64",
        "192.168.1.65"
    };

    uint8_t macs[5][6] = {
        {0x11, 0x22, 0x33, 0x44, 0x55, 0x01},
        {0x11, 0x22, 0x33, 0x44, 0x55, 0x02},
        {0x11, 0x22, 0x33, 0x44, 0x55, 0x03},
        {0x11, 0x22, 0x33, 0x44, 0x55, 0x04},
        {0x11, 0x22, 0x33, 0x44, 0x55, 0x05}
    };

    printf("TEST 4: 5 IP-uri x 5 MAC-uri\n");
    for(int round = 0; round < 5; round++){
        printf("\nRunda %d\n", round + 1);
        for(int i = 0; i < 5; i++){
            int mac_idx = (i + round) % 5;
            char label[64];
            snprintf(label, sizeof(label),"runda %d | IP[%d] -> MAC[%d]", round + 1, i, mac_idx);
            send_arp(sock, ips[i], macs[mac_idx], label);
            sleep(1);
        }
    }

    close(sock);
    return 0;
}