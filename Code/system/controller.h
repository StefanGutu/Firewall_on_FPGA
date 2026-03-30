#ifndef CONTROLLER_H_
#define CONTROLLER_H_


#include "../network/network_packet.h"
#include "../network/websocket_adpt.h"
#include "../control/rule_maker.h"
#include "../spoofing/arp_inspect.h"
#include <pthread.h>


void run_system();

#endif