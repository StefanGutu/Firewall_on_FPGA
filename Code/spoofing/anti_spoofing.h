#ifndef ANTI_SPOOFING_H_
#define ANTI_SPOOFING_H_

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>

#include <sys/socket.h>
#include <sys/types.h>

#include <linux/netlink.h>
#include <linux/rtnetlink.h>

typedef struct netlink_req{ 
    struct nlmsghdr nlh;  // Netlink header 
    struct rtmsg rtm;     // Payload 
    char buf[512];
}netlink_req;


int init_anti_ip_spoofing();                                                //this function will make a socket and bind it
int verfiy_ip(uint32_t ip_addr, uint32_t interface,int sock_rt);            //this function will check the ip address recived as parameter with the interface specified
int close_ip_spoofing(int sock_rt);

#endif