#include "network_packet.h"

//-------------------------------------------------------------------------------------------------------------------------------------------------------
//Partea unde initializez 


//Functia configureaza cum se copie pachetele pt queue-ul respctiv
int init_netlink_set_copy_mode(int sock, uint16_t queue_num, uint8_t mode, uint32_t range){
    netlink_data_set_copy_mode data;

    memset(&data, 0, sizeof(data));
    data.nlh.nlmsg_len = sizeof(data);
    data.nlh.nlmsg_type = (NFNL_SUBSYS_QUEUE << 8) | NFQNL_MSG_CONFIG;
    data.nlh.nlmsg_flags = NLM_F_REQUEST;
    data.nlh.nlmsg_seq = 0;

    data.nfg.nfgen_family = AF_UNSPEC;
    data.nfg.version = NFNETLINK_V0;
    data.nfg.res_id = htons(queue_num);

    data.nla.nla_type = NFQA_CFG_PARAMS;                                    //spune la kernel sa urmeze parametrii de configurare
    data.nla.nla_len = sizeof(data.nla) + sizeof(data.params);

    data.params.copy_range = htonl(range);                                  //cati bytes sa copieze (0xFFFF = tot)
    data.params.copy_mode = mode;                                           //NFQNL_COPY_PACKET (pachet complet) | NFQNL_COPY_META (header + info?) | NFQNL_COPY_NONE (nu trimite nimic)

    //Mesaj catre kernel unde daca el accepta nu primim exit
    if(send(sock, &data, sizeof(data), 0) < 0){
        perror("ERROR: Problem to set copy mode");
        return -1;
    }

    printf("SUCCESS: Netlink set copy mode\n");
    return 0;
}

//Functia respectiva spune la kernel ce PID o sa proceseze pachetele din queue
int init_netlink_config_pid_to_nfqueue(int sock, uint16_t queue_num, uint8_t command, uint8_t pf){
    netlink_config_data_pid_to_nfqueue data;

    memset(&data,0, sizeof(data));
    data.nlh.nlmsg_len = sizeof(data);
    data.nlh.nlmsg_type = (NFNL_SUBSYS_QUEUE << 8) | NFQNL_MSG_CONFIG;      //pt substiemul nfqueue si face mesaj de configurare
    data.nlh.nlmsg_flags = NLM_F_REQUEST;                                   //req catre kernel
    data.nlh.nlmsg_seq = 0;

    data.nfg.nfgen_family = pf;                                             //familia protocolului
    data.nfg.version = NFNETLINK_V0;                                        //versiunea protocolului
    data.nfg.res_id = htons(queue_num);                                     //htons() - face conv in network byte order si parametru deja nr la queue

    data.nla.nla_type = NFQA_CFG_CMD;
    data.nla.nla_len = sizeof(data.nla) + sizeof(data.cmd);

    data.cmd.command = command;                                             //seteaza comanda bind sau unbind
    data.cmd.pf = htons(pf);


    //Mesaj catre kernel unde daca el accepta nu primim exit
    if(send(sock, &data, sizeof(data), 0) < 0){
        if(command == NFQNL_CFG_CMD_PF_UNBIND){
            perror("ERROR: Message to kernel error in netlink_config_pid_to_nfqueue function unbind command");
        }else if(command == NFQNL_CFG_CMD_PF_BIND && pf == AF_INET){
            perror("ERROR: Message to kernel error in netlink_config_pid_to_nfqueue function bind command (protocol family)");
        }else if(command == NFQNL_CFG_CMD_PF_BIND && pf == AF_UNSPEC){
            perror("ERROR: Message to kernel error in netlink_config_pid_to_nfqueue function bind command (queue)");
        }

        return -1;
    }
    printf("SUCCESS: Netlink config PID to NFQUEUE\n");
    return 0;
}


int init_netlink_socket(){
    // Creeaza socket Netlink (raw) catre Netfilter
    //Netlink e folosit pentru a trimite a stabili comunicatia intre kernel si userspace
    int netlink_socket = socket(AF_NETLINK, SOCK_RAW, NETLINK_NETFILTER);
    if(netlink_socket < 0){
        perror("ERROR: Socket function for netlink has a problem!");
        exit(EXIT_FAILURE);
    }

    int queue_num = 0;

    struct sockaddr_nl addr;
    memset(&addr, 0, sizeof(addr));
    addr.nl_family = AF_NETLINK;       // familia Netlink
    addr.nl_pid = getpid();            // PID-ul procesului 
    addr.nl_groups = 0;


    //Legam socketul la adresa
    if(bind(netlink_socket, (struct sockaddr *)&addr, sizeof(addr)) < 0){
        perror("ERROR: Bind function fot netlink has a problem!");
        close(netlink_socket);
        exit(EXIT_FAILURE);
    }

    printf("SUCCESS: Netlink socket initialized (fd=%d)\n", netlink_socket);


    //Pt clean up 
    if(init_netlink_config_pid_to_nfqueue(netlink_socket, 0, NFQNL_CFG_CMD_PF_UNBIND, AF_INET) < 0){
        close(netlink_socket);
        exit(EXIT_FAILURE);
    }

    //Bind la protocolul ipv4
    if(init_netlink_config_pid_to_nfqueue(netlink_socket, 0, NFQNL_CFG_CMD_PF_BIND, AF_INET) < 0){
        close(netlink_socket);
        exit(EXIT_FAILURE);
    }

    //Bind la queue
    if(init_netlink_config_pid_to_nfqueue(netlink_socket, queue_num, NFQNL_CFG_CMD_BIND, AF_UNSPEC) < 0){
        close(netlink_socket);
        exit(EXIT_FAILURE);
    }

    //Setam modul de copiere
    if (init_netlink_set_copy_mode(netlink_socket, queue_num, NFQNL_COPY_PACKET, 0xFFFF) < 0) {
        close(netlink_socket);
        exit(EXIT_FAILURE);
    }
    return netlink_socket;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------
//Partea unde trimit raspuns

int send_verdict(int netlink_socket, uint32_t packet_id, uint32_t verdict){
    netlink_data_response_back data;

    memset(&data, 0, sizeof(netlink_data_response_back));

    data.nlh.nlmsg_len = sizeof(netlink_data_response_back);
    data.nlh.nlmsg_type = (NFNL_SUBSYS_QUEUE << 8) | NFQNL_MSG_VERDICT;
    data.nlh.nlmsg_flags = NLM_F_REQUEST;

    data.nfg.nfgen_family = AF_UNSPEC;
    data.nfg.version = NFNETLINK_V0;
    data.nfg.res_id = htons(0);  // Queue 0

    data.nla.nla_type = NFQA_VERDICT_HDR;
    data.nla.nla_len = sizeof(data.nla) + sizeof(data.vh);

    //Verdictul
    data.vh.verdict = htonl(verdict);    // NF_ACCEPT = 1, NF_DROP = 0
    data.vh.id = htonl(packet_id);       // ID-ul pachetului

    if (send(netlink_socket, &data, sizeof(netlink_data_response_back), 0) < 0) {
        printf("ERROR: Problem to send function in  send verdict");
        return -1;
    }

    return 0;
}

//-------------------------------------------------------------------------------------------------------------------------------------------------------
//Partea unde receptionez


//Verifica daca poate headerul si payloadul la atribut sa fie accesat fara probleme
int nla_ok(const struct nlattr *nla, int remaining){
    return remaining >= sizeof(*nla) &&
        nla->nla_len >= sizeof(*nla) &&
        nla->nla_len <= remaining;
}

void *nla_data(const struct nlattr *nla){
    return (char *) nla + NLA_HDRLEN;
}

 struct nlattr *nla_next(const struct nlattr *nla, int *remaining){
    int totlen = NLA_ALIGN(nla->nla_len); 
    *remaining -= totlen;
    return (struct nlattr *) ((char *) nla + totlen);
}

/*
    Atributele TLV (Type Length Value)
    E o schema de encodare pt protocoalele de comunicatie
    pentru a structura datele eficient
    Structura de tipul urmator:
    [Type (2 bytes)] [Length (2 bytes)] [Value (variabil)]

    Parseaza atributele TLV si proceseaza pachetul
*/
void atribute_netlink_packet(int netlink_socket, struct nlmsghdr *netlink_header,struct nfgenmsg *netlink_pointer_to_data){
    int attribut_length = netlink_header->nlmsg_len - NLMSG_LENGTH(sizeof(struct nfgenmsg));    //nlmsg_len (Dim. Totala)  -  (header_netlink + nfgenmsg) = zona de atribute

    struct nlattr *attribut = (struct nlattr *)((char *)netlink_pointer_to_data + sizeof(struct nfgenmsg));

    uint32_t packet_id = 0;
    unsigned char *ip_packet = NULL;
    int ip_len = 0;
    
    while(nla_ok(attribut, attribut_length)){
        switch(attribut->nla_type){
            case NFQA_PACKET_HDR: {
                //Extrage ID-ul pachetului (NECESAR pentru verdict!)
                struct nfqnl_msg_packet_hdr *ph = (struct nfqnl_msg_packet_hdr *)nla_data(attribut);
                packet_id = ntohl(ph->packet_id);
                printf("Packet ID: %u\n", packet_id);
                break;
            }
            case NFQA_PAYLOAD: {
                //Extrage payload-ul (pachetul IP efectiv)
                ip_packet = (unsigned char *)nla_data(attribut);
                ip_len = NLA_PAYLOAD(attribut);
                printf("Payload: %d bytes\n", ip_len);
                break;
            }
            case NFQA_IFINDEX_INDEV: {
                //Interfata de intrare
                uint32_t *ifindex = (uint32_t *)nla_data(attribut);
                printf("Interface IN: %u\n", ntohl(*ifindex));
                break;
            }
            case NFQA_IFINDEX_OUTDEV: {
                //Interfata de iesire
                uint32_t *ifindex = (uint32_t *)nla_data(attribut);
                printf("Interface OUT: %u\n", ntohl(*ifindex));
                break;
            } 
        }
        attribut = nla_next(attribut, &attribut_length);   
    }


    if (packet_id == 0) {
        printf("ERROR: Packet is 0\n");
        return;
    }

    // // Aici decizi: NF_ACCEPT (1) sau NF_DROP (0)
    uint32_t verdict = NF_ACCEPT;  // Lasă pachetul să treacă
    
    // // TODO: Adaugă logica ta de filtrare aici
    // // Exemplu: if (block_this_packet(ip_packet, ip_len)) verdict = NF_DROP;
    
    
    if (send_verdict(netlink_socket, packet_id, verdict) < 0) {
        printf("ERROR: Problem in atribute function send_verdict line\n");
    } else {
        printf("SUCCES: Verdict: %s\n", verdict == NF_ACCEPT ? "ACCEPT" : "DROP");
    }

}



void recive_netlink_packet(int netlink_socket){
     char buffer[8192];                                                 //buffer pt pachet

    struct sockaddr_nl sa;                                              //pid la kernel
    struct iovec iov = {                                                //pt scatter gather I/O (descrie zona de mem)
        .iov_base = buffer,
        .iov_len  = sizeof(buffer)
    };

    //Datele sunt luate din doc de la netlink(7) pt iov si msg
    struct msghdr msg = {
        .msg_name    = &sa,
        .msg_namelen = sizeof(sa),
        .msg_iov     = &iov,
        .msg_iovlen  = 1,
        .msg_control = NULL,
        .msg_controllen = 0,
        .msg_flags   = 0
    };

    // int flags = fcntl(netlink_socket, F_GETFL, 0);
    // fcntl(netlink_socket, F_SETFL, flags | O_NONBLOCK);                 //Pt a fi non-blocking

    ssize_t size = recvmsg(netlink_socket, &msg, 0);                    //folosit pentru a primi mesaje din socket, buffer e locatia unde se copie mesajele
    if(size <= 0) return;
  
    struct nlmsghdr *nlh;                                               //header la netlink                                             
    //NLMSG_OK verifica daca nu e truncat mesajul si e potrivit pentru parsare
    //NLMSG_NEXT obtine uratorul nlh intr-un multipart message
    for(nlh = (struct nlmsghdr *)buffer; NLMSG_OK(nlh, size); nlh = NLMSG_NEXT(nlh, size)){
        if(nlh->nlmsg_type == NLMSG_DONE){ 
            return;
        }
        if(nlh->nlmsg_type == NLMSG_ERROR){
            struct nlmsgerr *err = (struct nlmsgerr *)NLMSG_DATA(nlh);

            if(err->error == 0){
                printf("ACK from kernel\n");
            } else {
                printf("Netlink error: %s\n", strerror(-err->error));
            }
        }

        struct nfgenmsg *nfmsg = (struct nfgenmsg *)NLMSG_DATA(nlh);    //aici functia NLMSG_DATA o sa returneze un pointer la payload care e asociat cu netlink_header

        atribute_netlink_packet(netlink_socket, nlh, nfmsg);
    }
}