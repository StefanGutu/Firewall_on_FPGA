#include "controller.h"


static int netlink_socket = -1;
static int arp_socket = -1;

static void *thread_network_fn(void *arg){
    while (1){
        recive_netlink_packet(netlink_socket);
    }
    return NULL;
}

static void *thread_control_fn(void *arg){
    char line[2];
    while (1) {
        printf("\n[1] Add rule  [2] Read rules [3] Exit\n");

        if(fgets(line, sizeof(line), stdin) != NULL){
            int c;
            while((c = getchar()) != '\n' && c != EOF);
            
            int sel = atoi(line);
            if(sel == 1){
                write_rule();
            }
            else if(sel == 2){
                read_rules();
            }
            else if(sel == 3){
                return NULL;
            }
            else{
                printf("Invalid option\n");
            }
        }else{
            printf("ERROR: Read input error\n");
        }
    }
    return NULL;
}

static void *thread_arp_fn(void *arg){
    while (1){
        check_arp_table(arp_socket);
    }
    return NULL;
}

void run_system(){
    init_rule_space();
    netlink_socket = init_netlink_socket();
    arp_socket = init_arp_inspect();
    save_arp_table();

    pthread_t t_network, t_control, t_arp;

    pthread_create(&t_network, NULL, thread_network_fn, NULL);
    pthread_create(&t_control, NULL, thread_control_fn, NULL);
    // pthread_create(&t_arp, NULL, thread_arp_fn, NULL);

    pthread_join(t_control, NULL);   

    pthread_cancel(t_network);
    // pthread_cancel(t_arp);


    close_netlink_socket(netlink_socket);
    // close_arp_inspect(arp_socket);
    close_dma();
    close_rule_space();
}