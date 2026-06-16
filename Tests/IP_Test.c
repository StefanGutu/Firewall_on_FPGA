#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <netinet/ip_icmp.h>
#include <arpa/inet.h>


// Necesar pentru IP header și ICMP header.
uint16_t checksum(void *addr, int len){
    uint32_t sum = 0;
    uint16_t *ptr = addr;

    while(len > 1){ 
        sum += *ptr++; 
        len -= 2; 
    }

    if(len == 1){
        sum += *(uint8_t *)ptr;
    }

    sum  = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    return ~sum;
}

//Trimite ICMP cu IP sursă dintr-o subrețea permisă
// fake_src : IP dintr-o subrețea care ARE acces prin firewall
// target   : IP destinație (192.168.1.20)
// label    : descriere test pentru log
void send_spoofed_ping(const char *fake_src, const char *target, const char *label){
    printf("\n[TEST] %s\n", label);
    printf("src=%s -> dst=%s\n", fake_src, target);

    int sock = socket(AF_INET, SOCK_RAW, IPPROTO_RAW);
    if(sock < 0){ 
        error("socket (esti root?)"); 
        return; 
    }

    int one = 1;
    if(setsockopt(sock, IPPROTO_IP, IP_HDRINCL, &one, sizeof(one)) < 0){
        perror("IP_HDRINCL"); 
        close(sock); 
        return;
    }

    char packet[sizeof(struct iphdr) + sizeof(struct icmphdr)];
    memset(packet, 0, sizeof(packet));

    struct iphdr *iph  = (struct iphdr* )packet;
    struct icmphdr *icmp = (struct icmphdr* )(packet + sizeof(struct iphdr));

    // ICMP Echo Request
    // Checksum-ul ICMP se calculează primul(acopera doar payload-ul ICMP)
    icmp->type = ICMP_ECHO;
    icmp->code = 0;
    icmp->un.echo.id = htons(0xBEEF);
    icmp->un.echo.sequence = htons(1);
    icmp->checksum = checksum(icmp, sizeof(struct icmphdr));

    // IP header(sursa e din subreteaua permisa dar vine pe interfata gresita)
    iph->ihl = 5;
    iph->version = 4;
    iph->ttl = 64;
    iph->protocol = IPPROTO_ICMP;
    iph->saddr = inet_addr(fake_src);
    iph->daddr = inet_addr(target);
    iph->tot_len = htons(sizeof(packet));
    iph->check = checksum(iph, sizeof(struct iphdr));

    struct sockaddr_in dest;
    memset(&dest, 0, sizeof(dest));
    dest.sin_family = AF_INET;
    dest.sin_addr.s_addr = inet_addr(target);

    if(sendto(sock, packet, sizeof(packet), 0,(struct sockaddr *)&dest, sizeof(dest)) < 0){
        perror("sendto");
    } else {
        printf("Pachetul a fost trimis\n");
    }

    close(sock);
}

int main(int argc, char *argv[]){
    if(argc != 2){
        fprintf(stderr, "Usage: sudo %s <target_ip>\n", argv[0]);
        fprintf(stderr, "  ex:  sudo %s 192.168.1.20\n", argv[0]);
        return 1;
    }

    const char *target = argv[1];

    printf("Subrețele permise: 192.168.1.0/24, 192.168.2.0/24, 192.168.3.0/24 (daca au fost adaugate)\n");
    printf("Toate IP-urile de mai jos sunt permise de DMA.\n");
    printf("Detecția vine doar din verfiy_ip() prin RPF.\n");

    //TEST 1
    // Src: 192.168.2.5 — IP valid pe .2.x nu si pe 1.x
    // Rezultat: verfiy_ip() returnează pachet DROP
    send_spoofed_ping("192.168.2.5", target,"Test 1 | src=192.168.2.5 (.2.x) pe interfata .1.x | RPF mismatch");
    sleep(1);

    //TEST 2
    // Src: 192.168.3.10 — IP valid pe .3.x nu si pe 1.x
    // Rezultat: verfiy_ip() returnează pachet DROP
    send_spoofed_ping("192.168.3.10", target,"Test 2 | src=192.168.3.10 (.3.x) pe interfata .1.x | RPF mismatch");
    sleep(1);

    //TEST 3
    // Src: 192.168.2.100 — alt host din .2.x, IP diferit fata de Test 1
    // Rezultat: verfiy_ip() returnează pachet DROP
    send_spoofed_ping("192.168.2.100", target,"Test 3 | src=192.168.2.100 (.2.x alt host) pe interfata .1.x | RPF mismatch");
    sleep(1);

    return 0;
}