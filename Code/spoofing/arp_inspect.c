#include "arp_inspect.h"


arp_elem_t arp_table[MAX_ARP_ENTRIES];
uint8_t counter_arp_table;

arp_elem_t black_list_arp_table[MAX_BLACK_LIST];
uint8_t counter_black_list;

int init_arp_inspect(){
    struct sockaddr_ll saddr;

    int sock = socket(AF_PACKET, SOCK_RAW, htons(ETH_P_ARP));
    if(sock < 0){
        printf("ERROR: init_arp_inspect function problem when tried to open socket\n");
        return -1;
    }

    memset(&saddr, 0, sizeof(saddr));
    saddr.sll_family   = AF_PACKET;
    saddr.sll_protocol = htons(ETH_P_ARP);
    saddr.sll_ifindex  = 0;   //toate interfetele (diferit fata e celelalte care primeste pid)

    if(bind(sock, (struct sockaddr *)&saddr, sizeof(saddr)) < 0){
        printf("ERROR: init_arp_inspect function problem when tried to bind\n");
        close(sock);
        return -1;
    }

    return sock;
}

void print_arp_struct(arp_elem_t table){
    char buffer[INET_ADDRSTRLEN];

    if (inet_ntop(AF_INET, &table.ip, buffer, sizeof(buffer)) == NULL) {
        printf("ERROR: cant convert ip address in print function\n");
        return;
    }
    printf("IP: %s\n", buffer);

    printf("MAC: ");
    for(int i = 0; i < 6; i++){
        printf("%02x ", table.mac[i]);
    }
    printf("\n"); 
}

int add_in_arp_table(arp_elem_t val){

    if(counter_arp_table >= MAX_ARP_ENTRIES){
        return -1;
    }

    arp_table[counter_arp_table] = val;
    counter_arp_table++;

    return 0;
}

int save_arp_table(){
    FILE *file = fopen("/proc/net/arp", "r");
    if(!file){
        printf("ERROR: save_arp_table function problem while opeing file\n");
        return -1;
    }

    char first_line[256];
    fgets(first_line, sizeof(first_line), file);

    char IP_addr[32], HW_address[32], Mask[32], Device[32];
    int HW_type, Flags;

    while(fscanf(file, "%s %x %x %s %s %s",IP_addr, &HW_type, &Flags, HW_address, Mask, Device) == 6){
        if(strcmp(HW_address, "00:00:00:00:00:00") != 0){
            arp_elem_t new_elem;

            inet_pton(AF_INET, IP_addr, &new_elem.ip);
            sscanf(HW_address, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", &new_elem.mac[0],&new_elem.mac[1],&new_elem.mac[2],&new_elem.mac[3],&new_elem.mac[4],&new_elem.mac[5]);
            new_elem.last_seen = time(NULL);
            new_elem.trust = 1;
            new_elem.change_counter = 0;

            if(add_in_arp_table(new_elem) == -1){
                printf("ERROR: save_arp_table function, arp table is full\n");
                return -1;
            }

            print_arp_struct(new_elem);
        }
    }


    fclose(file);
    return 0;
}

int in_blacklist(arp_elem_t elem){
    for(int i = 0; i < counter_black_list; i++){
        if(black_list_arp_table[i].ip == elem.ip){
            return 1;  
        }
    }
    return 0;
}

int search_table(arp_elem_t new_elem){
    
    for(int i = 0; i < counter_arp_table; i++){
        if((new_elem.ip == arp_table[i].ip) && (arp_table[i].trust == 1) && (memcmp(new_elem.mac, arp_table[i].mac, 6) != 0)){
            return ARP_DETECT_TRUST_BROKEN_MAC;
        }else if((new_elem.ip == arp_table[i].ip) && (arp_table[i].trust == 0) && (memcmp(new_elem.mac, arp_table[i].mac, 6) != 0)){
            
            memcpy(arp_table[i].mac, new_elem.mac, 6);
            arp_table[i].change_counter++;
            arp_table[i].last_seen = new_elem.last_seen;

            return ARP_DETECT_PRESENT_ELEM;
        }else if((new_elem.ip == arp_table[i].ip) && (arp_table[i].trust == 0)){
            if(arp_table[i].change_counter >= MAX_CHANGES_MAC){
                return ARP_DETECT_MAX_CHANGE;
            }
        }

        if(memcmp(new_elem.mac, arp_table[i].mac, 6) == 0 && new_elem.ip != arp_table[i].ip){
            return ARP_DETECT_TRUST_BROKEN_IP;
        }

        printf("\nTABLE: ");
        print_arp_struct(arp_table[i]);
        printf("ELEM: ");
        print_arp_struct(new_elem);
        printf("\n");
    }
    return ARP_DETECT_NOTHING;
}

int check_arp_table(int socket){
    message_type_t message;
    arp_elem_t new_elem;

    ssize_t len = recv(socket, &message, sizeof(message), 0);
    if(len < 0){
        printf("ERROR: recv failed in check_arp_table\n");
        return -1;
    }

    
    if(ntohs(message.arp_payload.opcode) == 2){
        printf("OPCODE: %d\n", ntohs(message.arp_payload.opcode));

        memcpy(new_elem.mac, message.arp_payload.src_mac, 6);
        new_elem.ip = message.arp_payload.src_ip;
        new_elem.last_seen = time(NULL);
        new_elem.change_counter = 0;
        new_elem.trust = 0;

        if(search_table(new_elem) == ARP_DETECT_NOTHING){
            add_in_arp_table(new_elem);
            // print_arp_struct(new_elem);
        }else{
            if(in_blacklist(new_elem) == 0){

                char cmd[128];
                char ip_str[INET_ADDRSTRLEN];
                char mac_str[18];

                inet_ntop(AF_INET, &new_elem.ip, ip_str, sizeof(ip_str));
                snprintf(cmd, sizeof(cmd), "iptables -A INPUT -s %s -j DROP", ip_str);
                system(cmd);
                printf("[SECURITY] IP: %s BLOCKED\n", ip_str);
                

                inet_ntop(AF_INET, &new_elem.ip, ip_str, sizeof(ip_str));
                snprintf(mac_str, sizeof(mac_str), "%02x:%02x:%02x:%02x:%02x:%02x",
                        new_elem.mac[0], new_elem.mac[1], new_elem.mac[2],
                        new_elem.mac[3], new_elem.mac[4], new_elem.mac[5]);

                //ignore packets
                snprintf(cmd, sizeof(cmd), "ip neigh replace %s lladdr %s dev enx0008dc010203 nud failed",ip_str, mac_str);
                system(cmd);
                printf("[SECURITY] Untrusted IP - MAC: %s | %s\n", ip_str, mac_str);

                if(counter_black_list >= MAX_BLACK_LIST){
                    printf("ERROR: blacklist full\n");
                    return -1;
                }
                black_list_arp_table[counter_black_list] = new_elem;
                counter_black_list++;
            }
        }

    }

    return 0;
}


