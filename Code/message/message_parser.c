#include "message_parser.h"

dma_util_transfer transfer_info;

void close_dma(){
    munmap(transfer_info.dma_vaddr, 65535);
    munmap(transfer_info.dma_src_addr, 65535);
    munmap(transfer_info.dma_dst_addr, 65535);
    close(transfer_info.ddr_mem);
}

void print_mem(void *virtual_address, int byte_count)
{
	char *data_ptr = virtual_address;

	for(int i=0;i<byte_count;i++){
		printf("%02X", data_ptr[i]);

		// print a space every 4 bytes (0 indexed)
		if(i%4==3){
			printf(" ");
		}
	}

	printf("\n");
}

unsigned int write_dma(unsigned int *virtual_addr, int offset, unsigned int value)
{
    virtual_addr[offset>>2] = value;

    return 0;
}

unsigned int read_dma(unsigned int *virtual_addr, int offset)
{
    return virtual_addr[offset>>2];
}

void dma_s2mm_status(unsigned int *virtual_addr)
{
    unsigned int status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);

    // printf("Stream to memory-mapped status (0x%08x@0x%02x):", status, S2MM_STATUS_REGISTER);

    if (status & STATUS_HALTED) {
		printf(" Halted.\n");
	} else {
		printf(" Running.\n");
	}

    if (status & STATUS_IDLE) {
		printf(" Idle.\n");
	}

    if (status & STATUS_SG_INCLDED) {
		printf(" SG is included.\n");
	}

    if (status & STATUS_DMA_INTERNAL_ERR) {
		printf(" DMA internal error.\n");
	}

    if (status & STATUS_DMA_SLAVE_ERR) {
		printf(" DMA slave error.\n");
	}

    if (status & STATUS_DMA_DECODE_ERR) {
		printf(" DMA decode error.\n");
	}

    if (status & STATUS_SG_INTERNAL_ERR) {
		printf(" SG internal error.\n");
	}

    if (status & STATUS_SG_SLAVE_ERR) {
		printf(" SG slave error.\n");
	}

    if (status & STATUS_SG_DECODE_ERR) {
		printf(" SG decode error.\n");
	}

    if (status & STATUS_IOC_IRQ) {
		printf(" IOC interrupt occurred.\n");
	}

    if (status & STATUS_DELAY_IRQ) {
		printf(" Interrupt on delay occurred.\n");
	}

    if (status & STATUS_ERR_IRQ) {
		printf(" Error interrupt occurred.\n");
	}
}

void dma_mm2s_status(unsigned int *virtual_addr)
{
    unsigned int status = read_dma(virtual_addr, MM2S_STATUS_REGISTER);

    // printf("Memory-mapped to stream status (0x%08x@0x%02x):", status, MM2S_STATUS_REGISTER);

    if (status & STATUS_HALTED) {
		printf(" Halted.\n");
	} else {
		printf(" Running.\n");
	}

    if (status & STATUS_IDLE) {
		printf(" Idle.\n");
	}

    if (status & STATUS_SG_INCLDED) {
		printf(" SG is included.\n");
	}

    if (status & STATUS_DMA_INTERNAL_ERR) {
		printf(" DMA internal error.\n");
	}

    if (status & STATUS_DMA_SLAVE_ERR) {
		printf(" DMA slave error.\n");
	}

    if (status & STATUS_DMA_DECODE_ERR) {
		printf(" DMA decode error.\n");
	}

    if (status & STATUS_SG_INTERNAL_ERR) {
		printf(" SG internal error.\n");
	}

    if (status & STATUS_SG_SLAVE_ERR) {
		printf(" SG slave error.\n");
	}

    if (status & STATUS_SG_DECODE_ERR) {
		printf(" SG decode error.\n");
	}

    if (status & STATUS_IOC_IRQ) {
		printf(" IOC interrupt occurred.\n");
	}

    if (status & STATUS_DELAY_IRQ) {
		printf(" Interrupt on delay occurred.\n");
	}

    if (status & STATUS_ERR_IRQ) {
		printf(" Error interrupt occurred.\n");
	}
}

int dma_mm2s_sync(unsigned int *virtual_addr)
{
    unsigned int mm2s_status =  read_dma(virtual_addr, MM2S_STATUS_REGISTER);

	// sit in this while loop as long as the status does not read back 0x00001002 (4098)
	// 0x00001002 = IOC interrupt has occured and DMA is idle
	while(!(mm2s_status & IOC_IRQ_FLAG) || !(mm2s_status & IDLE_FLAG))
	{
        dma_s2mm_status(virtual_addr);
        dma_mm2s_status(virtual_addr);

        mm2s_status =  read_dma(virtual_addr, MM2S_STATUS_REGISTER);
    }

	return 0;
}

int dma_s2mm_sync(unsigned int *virtual_addr)
{
    unsigned int s2mm_status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);

	// sit in this while loop as long as the status does not read back 0x00001002 (4098)
	// 0x00001002 = IOC interrupt has occured and DMA is idle
	while(!(s2mm_status & IOC_IRQ_FLAG) || !(s2mm_status & IDLE_FLAG))
	{
        dma_s2mm_status(virtual_addr);
        dma_mm2s_status(virtual_addr);

        s2mm_status = read_dma(virtual_addr, S2MM_STATUS_REGISTER);
    }

	return 0;
}



int init_dma(){
    //open a character device file for ddr mem
    transfer_info.ddr_mem = open("/dev/mem", O_RDWR | O_SYNC);                  
    if(transfer_info.ddr_mem == -1){
        printf("ERROR: Problem to init ddr mem\n");
        return -1;
    }

    //memmap the addr of dma axi ip with axi lite control interface
    transfer_info.dma_vaddr = mmap(0, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, transfer_info.ddr_mem, BASE_ADDR_DMA);
    if(transfer_info.dma_vaddr == MAP_FAILED){
        printf("ERROR: DMA virtual addres mmap error");
        close(transfer_info.ddr_mem);
        return -1;
    }

    //memmap the mm2s
    transfer_info.dma_src_addr = mmap(0, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, transfer_info.ddr_mem, BASE_SRC_ADDR);
    if(transfer_info.dma_src_addr == MAP_FAILED){
        printf("ERROR: DMA src addres mmap error");
        close(transfer_info.ddr_mem);
        return -1;
    }

    //memmap the s2mm
    transfer_info.dma_dst_addr = mmap(0, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, transfer_info.ddr_mem, BASE_DST_ADDR);
    if(transfer_info.dma_dst_addr == MAP_FAILED){
        printf("ERROR: DMA dstaddres mmap error");
        close(transfer_info.ddr_mem);
        return -1;
    }

    //reset
    write_dma(transfer_info.dma_vaddr, S2MM_CONTROL_REGISTER, RESET_DMA);
    write_dma(transfer_info.dma_vaddr, MM2S_CONTROL_REGISTER, RESET_DMA);

	//halt
    write_dma(transfer_info.dma_vaddr, S2MM_CONTROL_REGISTER, HALT_DMA);
    write_dma(transfer_info.dma_vaddr, MM2S_CONTROL_REGISTER, HALT_DMA);

	//en irq
    write_dma(transfer_info.dma_vaddr, S2MM_CONTROL_REGISTER, ENABLE_ALL_IRQ);
    write_dma(transfer_info.dma_vaddr, MM2S_CONTROL_REGISTER, ENABLE_ALL_IRQ);

    //write src addr in ddr
    write_dma(transfer_info.dma_vaddr, MM2S_SRC_ADDRESS_REGISTER, BASE_SRC_ADDR);

    //write dst addr in ddr
    write_dma(transfer_info.dma_vaddr, S2MM_DST_ADDRESS_REGISTER, BASE_DST_ADDR);

    //run mm2s
    write_dma(transfer_info.dma_vaddr, MM2S_CONTROL_REGISTER, RUN_DMA);

	//run s2mm
    write_dma(transfer_info.dma_vaddr, S2MM_CONTROL_REGISTER, RUN_DMA);

    return 0;
}


int send_data_to_dma(dma_data_transfer data){

    transfer_info.dma_src_addr[0] = data.src_ip;
    transfer_info.dma_src_addr[1] = data.dst_ip;
    transfer_info.dma_src_addr[2] = data.dst_port;
    transfer_info.dma_src_addr[3] = (data.message_id) << 8 | data.protocol;


    memset(transfer_info.dma_dst_addr, 0, 4);

    // printf("Source memory block data: ");
	// print_mem(transfer_info.dma_src_addr, 16);

    // printf("Destination memory block data: ");
	// print_mem(transfer_info.dma_dst_addr, 4);

    //write length of data
    write_dma(transfer_info.dma_vaddr, MM2S_TRNSFR_LENGTH_REGISTER, 16);

    //write length of response
    write_dma(transfer_info.dma_vaddr, S2MM_BUFF_LENGTH_REGISTER, 4);

    //sync
    dma_mm2s_sync(transfer_info.dma_vaddr);
    dma_s2mm_sync(transfer_info.dma_vaddr);

    // printf("RS: ");
	// print_mem(transfer_info.dma_dst_addr, 4);

    return *transfer_info.dma_dst_addr;
}