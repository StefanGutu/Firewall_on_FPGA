#include "anti_spoofing.h"

//TO DO 
/*
1.ARP spoofing 
    Poti implemena un nou tread care verifica cererile arp si salvezi intr-un tabel informatiile [ip - mac]
    In momentul in care acestea sau schimbat de prea multe ori poti determina ca e arp spoofing

2.MAC spoofing (teoretic probabil fac doar ARP spoofing pt a reduce complexitatea)
    Aici te poti folosi de tabelul ARP ca sa determini exact cam cui ar fi asociat combinatia [ip - mac]
    Daca exista mai multe ip-ui cu acelasi mac inseamna ca e anomalie sau invers

3.IP spoofing
    Aici se fura ip-ul si tre sa determini cum te protejezi prin Reverse Path Forwarding

*/

int close_ip_spoofing(int sock_rt){
    if(close(sock_rt) == -1){
        return -1;
    }
    return 0;
}

int init_anti_ip_spoofing(){
    struct sockaddr_nl saddr;

    int sock_rt = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
    if(sock_rt < 0){
        printf("ERROR: init_anti_ip_spoofing function problem when tried to open socket\n");
        return -1;
    }

    memset(&saddr, 0, sizeof(saddr));
    saddr.nl_family = AF_NETLINK;
    saddr.nl_pid = getpid();

    //bind current process to the netlink socket 
    if (bind(sock_rt, (struct sockaddr *)&saddr, sizeof(saddr)) < 0) {
        printf("ERROR: init_anti_ip_spoofing function problem when tried to bind\n");
        close(sock_rt);
        return -1;
    }

    return sock_rt;
}

int read_route_response(int sock_rt){
    char buf[4096];
    struct sockaddr_nl nladdr;
    struct iovec iov = {
        .iov_base = buf,
        .iov_len  = sizeof(buf),
    };
    struct msghdr msg = {
        .msg_name    = &nladdr,
        .msg_namelen = sizeof(nladdr),
        .msg_iov     = &iov,
        .msg_iovlen  = 1,
    };

    ssize_t status = recvmsg(sock_rt, &msg, 0);
    if (status < 0) {
        printf("ERROR: read_route_response failed on recvmsg\n");
        return -1;
    }

    struct nlmsghdr *h   = (struct nlmsghdr *)buf;
    int              msglen = status;

    while (NLMSG_OK(h, msglen)) {

        if (nladdr.nl_pid != 0) {
            h = NLMSG_NEXT(h, msglen);
            continue;
        }

        if (h->nlmsg_type == NLMSG_ERROR) {
            struct nlmsgerr *err = (struct nlmsgerr *)NLMSG_DATA(h);
            printf("ERROR: netlink error: %d\n", err->error);   
            //daca e cod -101 inseamna ca nu exista interfata pt ip-ul dat
            return -1;
        }

        if (h->nlmsg_type != RTM_NEWROUTE) {
            h = NLMSG_NEXT(h, msglen);
            continue;
        }

        struct rtmsg  *rtm  = (struct rtmsg *)NLMSG_DATA(h);
        struct rtattr *attr = RTM_RTA(rtm);
        int            alen = RTM_PAYLOAD(h);

        for (; RTA_OK(attr, alen); attr = RTA_NEXT(attr, alen)) {
            if (attr->rta_type == RTA_OIF) {
                return *(int *)RTA_DATA(attr);  // returneaza indexul
            }
        }

        h = NLMSG_NEXT(h, msglen);
    }

    return -1;
}


//Se va folosi Reverse Path Forwarding pt a putea determina daca e spoofing sau nu
int verfiy_ip(uint32_t ip_addr, uint32_t interface, int sock_rt){
    struct netlink_req request;
    memset(&request, 0, sizeof(request));

    //check not to be a loopback
    if((ip_addr & 0xFF000000) == 0x7F000000){
        return 0;
    }
    //check not to be default route
    if(ip_addr == 0){
        return 0;
    }
    //setting params to route table
    request.nlh.nlmsg_type = RTM_GETROUTE;
    request.nlh.nlmsg_flags = NLM_F_REQUEST;
    // request.nlh.nlmsg_len = sizeof(request);
    request.nlh.nlmsg_len = NLMSG_LENGTH(sizeof(struct rtmsg));
    request.nlh.nlmsg_seq = time(NULL);
    request.rtm.rtm_family = AF_INET;
    request.rtm.rtm_dst_len = 32;                       //size la ip

    struct rtattr *rta = (struct rtattr *)((char *)&request + NLMSG_ALIGN(request.nlh.nlmsg_len));
    rta->rta_type = RTA_DST;                            //ip destinatie
    rta->rta_len  = RTA_LENGTH(sizeof(ip_addr));        //lungime header + date
    memcpy(RTA_DATA(rta), &ip_addr, sizeof(ip_addr));   //copiaza ip

    //actualizeaza lungimea totala a mesajului
    request.nlh.nlmsg_len = NLMSG_ALIGN(request.nlh.nlmsg_len) + rta->rta_len;

    ssize_t response_send = send(sock_rt, &request, request.nlh.nlmsg_len, 0);;
    if(response_send < 0){
        printf("ERROR: verify id problem when sending request");
        close(sock_rt);
        return -1;
    }
    
    // printf("DATA: %d\n", read_route_response(sock_rt));
    int src_ip_interface = read_route_response(sock_rt);

    if(interface == src_ip_interface){
        return 3;
    }


    return 2;
}






