#ifndef MESSAGE_PARSER_H_
#define MESSAGE_PARSER_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <termios.h>
#include <arpa/inet.h>  


#define BASE_ADDR_DMA               0x40400000
#define BASE_SRC_ADDR               0x0e000000
#define BASE_DST_ADDR               0x0f000000

#define MM2S_CONTROL_REGISTER       0x00
#define MM2S_STATUS_REGISTER        0x04
#define MM2S_SRC_ADDRESS_REGISTER   0x18
#define MM2S_TRNSFR_LENGTH_REGISTER 0x28

#define S2MM_CONTROL_REGISTER       0x30
#define S2MM_STATUS_REGISTER        0x34
#define S2MM_DST_ADDRESS_REGISTER   0x48
#define S2MM_BUFF_LENGTH_REGISTER   0x58

#define IOC_IRQ_FLAG                1<<12
#define IDLE_FLAG                   1<<1

#define STATUS_HALTED               0x00000001
#define STATUS_IDLE                 0x00000002
#define STATUS_SG_INCLDED           0x00000008
#define STATUS_DMA_INTERNAL_ERR     0x00000010
#define STATUS_DMA_SLAVE_ERR        0x00000020
#define STATUS_DMA_DECODE_ERR       0x00000040
#define STATUS_SG_INTERNAL_ERR      0x00000100
#define STATUS_SG_SLAVE_ERR         0x00000200
#define STATUS_SG_DECODE_ERR        0x00000400
#define STATUS_IOC_IRQ              0x00001000
#define STATUS_DELAY_IRQ            0x00002000
#define STATUS_ERR_IRQ              0x00004000

#define HALT_DMA                    0x00000000
#define RUN_DMA                     0x00000001
#define RESET_DMA                   0x00000004
#define ENABLE_IOC_IRQ              0x00001000
#define ENABLE_DELAY_IRQ            0x00002000
#define ENABLE_ERR_IRQ              0x00004000
#define ENABLE_ALL_IRQ              0x00007000


//this struct is used for DMA to be able to trasfer data to it
typedef struct{
    unsigned int ddr_mem;
    unsigned int *dma_vaddr;
    unsigned int *dma_src_addr;
    unsigned int *dma_dst_addr;
}dma_util_transfer;

//here is stored information about what we should send to DMA
typedef struct{
    uint32_t src_ip;                                //+
    uint32_t dst_ip;                                //+
    uint16_t src_port;                              //+-
    uint16_t dst_port;                              //+
    uint16_t message_id;                            //+
    uint8_t  protocol;                              //+
    uint8_t  message_rs;                            //back
}dma_data_transfer;


int         init_dma();
//will send the structure to dma to be checked in hardware for ip + port + protocol based on the rules in bram
int         send_data_to_dma(dma_data_transfer data);                  
void        close_dma();

#endif