#include "websocket_adpt.h"


int ws_callback(struct lws *wsi, enum lws_callback_reasons reason, void *user, void *in, size_t len);

static struct lws_protocols protocols[] = {
    {
        "ws-protocol",
        ws_callback,
        0,
        256
    },
    { NULL, NULL, 0, 0 }
};

message_queue_t queue = {0};
struct lws_context *global_context = NULL;
pthread_mutex_t queue_mutex = PTHREAD_MUTEX_INITIALIZER; 

struct lws_context *init_server(){
    struct lws_context_creation_info info = {0};
    info.port      = 9000;
    info.protocols = protocols;
    info.gid = -1;
    info.uid = -1;

    global_context = lws_create_context(&info);
    return global_context;
}

void push_event(const char *msg){
    pthread_mutex_lock(&queue_mutex);

    if (queue.count < 64) {
        strncpy(queue.messages[queue.head], msg, 255);
        queue.head = (queue.head + 1) % 64;
        queue.count++;
    }

    pthread_mutex_unlock(&queue_mutex); 

    //notificam libwebsockets ca avem date noi 
    if (global_context) {
        lws_callback_on_writable_all_protocol(global_context, &protocols[0]);
        lws_cancel_service(global_context); 
    }
}

int build_json(int attack_type){
    char event[256];
    snprintf(event, sizeof(event), "{\"type\": %d}", attack_type);
    push_event(event);
    return 0;
}

int send_json(struct lws *wsi, const char *json, int len){
    unsigned char buf[LWS_PRE + 256];
    unsigned char *p = &buf[LWS_PRE];
    memcpy(p, json, len);
    return lws_write(wsi, p, len, LWS_WRITE_TEXT);
}

int ws_callback(struct lws *wsi, enum lws_callback_reasons reason, void *user, void *in, size_t len){
    switch(reason){
        case LWS_CALLBACK_ESTABLISHED:
            printf("Client connected\n");
            break;

        case LWS_CALLBACK_SERVER_WRITEABLE:
            pthread_mutex_lock(&queue_mutex); //blocam pentru citire sigura
            if (queue.count > 0) {
                char *msg = queue.messages[queue.tail];
                send_json(wsi, msg, strlen(msg));
                queue.tail = (queue.tail + 1) % 64;
                queue.count--;
                
                //nou callback daca exista ceva pe queue
                if (queue.count > 0) {
                    lws_callback_on_writable(wsi);
                }
            }
            pthread_mutex_unlock(&queue_mutex);
            break;

        case LWS_CALLBACK_CLOSED:
            printf("Client disconected\n");
            break;

        default:
            break;
    }
    return 0;
}