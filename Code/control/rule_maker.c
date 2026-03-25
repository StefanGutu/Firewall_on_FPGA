#include "rule_maker.h"

rule_space_t bram_data;


int init_rule_space(){

    if((bram_data.fd = open("/dev/mem", O_RDWR | O_SYNC)) != -1){
        //Mapeaza adresa fizica in spatiu virtual
        bram_data.bram = mmap(NULL, BRAM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, bram_data.fd, BRAM_BASE);
        if(bram_data.bram == MAP_FAILED){
            printf("ERROR: Problem to map phisical adress in virtual space for init rule space");
            close(bram_data.fd);
            return -1;
        }

        bram_data.counter = 0;
        return 0;
    }

    printf("ERROR: Problem to init rule space\n");
    return -1;
}


void close_rule_space(){
    if(bram_data.bram != NULL){
        munmap(bram_data.bram, BRAM_SIZE);
        bram_data.bram = NULL;
    }
    if(bram_data.fd >= 0){
        close(bram_data.fd);
        bram_data.fd = -1;
    }
}


//--------------------------------------------------------------------------------------------------------------------------------------------------------

uint32_t bram_data_to_uint32(uint16_t port) {
    return ((uint32_t)1 << 31) | (uint32_t)port;
}


uint32_t clear_bit_31(uint32_t x)
{
    x &= ~(1u << 31);  // pune bitul 31 pe 0
    return x;
}

void write_line(char *line, char *word){
    printf("ADD %s: ", word);
    if((fgets(line, LINE_SIZE, stdin)) != NULL){
        line[strcspn(line, "\n")] = 0;                                      //fara asta da eroare in inet_ptn
        // printf(" %s\n", line);
    }else{
        printf("ERROR: Write line error\n");
    }    
}

int write_rule(){

    rule_t new_rule;
    char line[LINE_SIZE];

    // printf("You wanted to add a new rule!\n");
    write_line(line, "SRC_IP");
    if((inet_pton(AF_INET, line, &new_rule.src_ip)) != 1){
        printf("ERROR: Problem in inet_pton\n");
    }

    write_line(line, "DST_IP");
    if((inet_pton(AF_INET, line, &new_rule.dst_ip)) != 1){
        printf("ERROR: Problem in inet_pton\n");
    }

    write_line(line, "PORT");
    new_rule.dst_port = atoi(line);

    write_line(line, "PROTOCOL");                                               //at the moment not used
    new_rule.protocol = atoi(line);

    new_rule.valid = 1;


    if(bram_data.counter < 680){
        uint32_t offset = bram_data.counter * 3 ;
        bram_data.bram[offset ] = new_rule.dst_port;                            //1
        bram_data.bram[offset + 1] = new_rule.dst_ip;                           //2        
        bram_data.bram[offset + 2] = new_rule.src_ip;                           //3

    }else{
        printf("WARNING: BRAM is full you have 680 rule now");
    }
    bram_data.counter++;
    return 0;
}


int read_rules(){
    rule_t old_rule;
    int i = 0;
    while(i < bram_data.counter){
        uint32_t offset = i * 3 ;

        char string_dst_ip[INET_ADDRSTRLEN];
        char string_src_ip[INET_ADDRSTRLEN];

        old_rule.src_ip = bram_data.bram[offset ];
        old_rule.dst_port = bram_data.bram[offset + 1];
        old_rule.dst_ip = bram_data.bram[offset + 2];

        inet_ntop(AF_INET, &old_rule.dst_ip, string_dst_ip, sizeof(string_dst_ip));        
        inet_ntop(AF_INET, &old_rule.src_ip, string_src_ip, sizeof(string_src_ip));

        printf("SRC_IP: %s\n",string_src_ip);
        printf("DST_IP: %s\n",string_dst_ip);
        printf("PORT  : %d\n", old_rule.dst_port);
        i++;
    }

    return 0;
}