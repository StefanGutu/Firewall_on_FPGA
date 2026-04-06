`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2026 12:02:01 PM
// Design Name: 
// Module Name: RuleChecker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module RuleChecker(
    input clk,
    input rst,
    input [31:0]        s_header_data_src_ip,  // for the ReciveData IP Block
    input [31:0]        s_header_data_dst_ip,
    input [15:0]        s_header_data_dst_port,
    input [15:0]        s_header_data_src_port,
    input [7:0]         s_header_data_protocol,
    input               s_header_data_start,
    output reg          s_header_data_end,
    output reg          s_header_data_response,
    
    output reg [10:0]   bram_port_addr,  //for bram
    output reg [31:0]   bram_port_din,
    input [31:0]        bram_port_dout,
    output reg          bram_port_en,
    output reg          bram_port_web
    
//    output reg [3:0]    show_state,
//    output reg          show_valid_data_bram,
//    output reg [31:0]   show_bram_data
    );
    
    
    parameter IDLE                  = 4'b0000;
    
    parameter GET_BRAM_DATA         = 4'b0001;   //read dst port, protocol and valid bit  
    parameter GET_BRAM_DST_IP       = 4'b0010;   //read dst ip   
    parameter GET_BRAM_SRC_IP       = 4'b0011;   //read src ip
    parameter RECIVED_BRAM_DATA     = 4'b0100;
    parameter RECIVED_BRAM_DST_IP   = 4'b0101; 
    parameter RECIVED_BRAM_SRC_IP   = 4'b0110;  
    parameter COMPARE               = 4'b0111;
    parameter RESPONSE              = 4'b1000;

    
    
    parameter integer OFFSET_RULE = 12;
    
    reg [3:0] next_state,current_state;
    
    
    reg [5:0] counter_pos_bram; //63 max
    reg valid_data_bram;
    
    reg [31:0] bram_src_ip;
    reg [31:0] bram_dst_ip;
    reg [31:0] bram_data;
    
    reg state_packet;   //by default the packet is drop if we check a rule he will be set as PASS
    
    
    always @(posedge clk, negedge rst) begin
        if(!rst) begin
            current_state <= IDLE;
        end
        else begin
            current_state <= next_state;
        end
        
//        show_state <= current_state;
    end
    
    always @(*) begin
        case(current_state) 
            IDLE: begin
                if(s_header_data_start == 1'b1) begin
                    next_state = GET_BRAM_DATA;
                end 
                else begin
                    next_state = IDLE;
                end
            end
            GET_BRAM_DATA: begin
                next_state = GET_BRAM_DST_IP;
            end
            GET_BRAM_DST_IP: begin
                next_state = GET_BRAM_SRC_IP;
            end
            GET_BRAM_SRC_IP: begin
                next_state = RECIVED_BRAM_DATA;
            end
            RECIVED_BRAM_DATA: begin
                next_state = RECIVED_BRAM_DST_IP;
            end
            RECIVED_BRAM_DST_IP: begin
                next_state = RECIVED_BRAM_SRC_IP;
            end
            RECIVED_BRAM_SRC_IP: begin
                next_state = COMPARE;
            end
            
            COMPARE: begin
                if( 
                    (s_header_data_src_ip == bram_src_ip) &&
                    (s_header_data_dst_ip == bram_dst_ip) &&
                    (s_header_data_dst_port == bram_data[15:0]) &&
                    (s_header_data_src_port == bram_data[31:16])
                    ) begin
                    
                    next_state = RESPONSE;
                end 
                else begin
                    if(valid_data_bram == 1'b1) begin
                        next_state = GET_BRAM_DATA;
                    end  
                    else begin
                        next_state = RESPONSE;
                    end              
                end 
            end
            RESPONSE: begin
                next_state = IDLE;
            end 
        
        endcase
    end
    
    
    always @(posedge clk or negedge rst) begin
        
        s_header_data_end <= 1'b0;
        s_header_data_response <= 1'b0;
        if(!rst) begin
            bram_port_web <= 1'b0;
            bram_port_en <= 1'b0;
        end 
        else begin
            
            case(current_state) 
                IDLE: begin
                    bram_port_addr <= 11'b0;
                    counter_pos_bram <= 6'b0;
                    bram_port_en <= 1'b0;
                end 
                GET_BRAM_DATA: begin
                    bram_port_en <= 1'b1;
                    bram_port_addr <= (counter_pos_bram * OFFSET_RULE);    
                end
                GET_BRAM_DST_IP: begin  
                    bram_port_addr <= (counter_pos_bram * OFFSET_RULE) + 4;             
                end
                GET_BRAM_SRC_IP: begin
                    bram_port_addr <= (counter_pos_bram * OFFSET_RULE) + 8;                
                end
                RECIVED_BRAM_DATA: begin
                    bram_data <= bram_port_dout;
//                    valid_data_bram <= bram_port_dout[31]; 
                    valid_data_bram <= (bram_port_dout != 32'b0); 
                end
                 RECIVED_BRAM_DST_IP: begin
                    bram_dst_ip <= bram_port_dout;           
                end
                RECIVED_BRAM_SRC_IP: begin
                    bram_port_en <= 1'b0;
                    bram_src_ip <= bram_port_dout;      
         
                end
                COMPARE: begin
                    if (
                        (s_header_data_src_ip == bram_src_ip) && 
                        (s_header_data_dst_ip == bram_dst_ip) && 
                        (s_header_data_dst_port == bram_data[15:0]) &&
                        (s_header_data_src_port == bram_data[31:16])
                        ) begin
                            
                        state_packet <= 1'b1;
                        
                    end
                    else begin
                        state_packet <= 1'b0;
                        counter_pos_bram <= counter_pos_bram + 1'b1;
                    end  
                    valid_data_bram <= 1'b0;
                end
                RESPONSE: begin
                    valid_data_bram <= 1'b0;
                    s_header_data_end <= 1'b1;
                    s_header_data_response <= state_packet;
                end
            endcase 
        end 
//        show_valid_data_bram <= valid_data_bram;
//        show_bram_data <= bram_port_dout;
    end 
    

    
    
endmodule
