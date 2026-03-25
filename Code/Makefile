CC = gcc
CFLAGS = -Wall -pthread
TARGET = firewall

SRCS = 	src/runner.c \
		system/controller.c \
       	network/network_packet.c \
       	control/rule_maker.c \
       	message/message_parser.c \
       	spoofing/anti_spoofing.c \
       	spoofing/arp_inspect.c

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)