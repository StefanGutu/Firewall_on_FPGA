#ifndef RULE_MAKER_H_
#define RULE_MAKER_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <arpa/inet.h>                                                                  //pt functia inet_pton

#define BRAM_BASE           0x40000000
#define BRAM_SIZE           0x00002000
#define MAX_WORDS           (BRAM_SIZE / 4)

#define LINE_SIZE           16

//This struct is for the space of bram
typedef struct{
    int fd;
    uint32_t *bram;
    uint32_t counter;
}rule_space_t;                      

//This struct is for a rule to br write
typedef struct{
    uint32_t dst_ip;
    uint32_t src_ip;
    uint32_t dst_port;
    uint8_t protocol;
    uint8_t valid;
}rule_t;


int init_rule_space();                                                                   //this function will init the bram 
void close_rule_space();                                                                 //this function check if we have the bram or fd open and close it at the end
int write_rule();
int read_rules();

#endif