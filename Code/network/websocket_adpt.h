#ifndef WEBSOCKET_ADPT_H_
#define WEBSOCKET_ADPT_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <pthread.h>

#include <libwebsockets.h>

#define PERRMISION_DENIED 0x2
#define IP_SPOOFED 0x4

typedef struct message_queue{
    char messages[64][256];   
    int head;                 
    int tail;
    int count;                 
}message_queue_t;

struct lws_context *init_server();
int build_json(int attack_type);
void run_server(struct lws_context *context);

#endif