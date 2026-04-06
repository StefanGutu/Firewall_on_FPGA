`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2026 04:39:59 PM
// Design Name: 
// Module Name: AXI_Slave_ReciveData
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


module AXI_Slave_ReciveData(
    input clk,
    input rst,
    input [31:0]    s_axis_tdata,
    input           s_axis_tvalid,
    input           s_axis_tlast,
    output reg      s_axis_tready,
    
    output reg [31:0]   m_header_data_src_ip,
    output reg [31:0]   m_header_data_dst_ip,
    output reg [15:0]   m_header_data_dst_port,
    output reg [15:0]   m_header_data_src_port,
    output reg [7:0]    m_header_data_protocol,
    output reg          m_header_data_start,
    input               m_header_data_end,
    input               m_header_data_response,
    
    output reg [13:0]   m_packet_id,
    output reg [1:0]    m_packet_rs
    
//    output reg [1:0]    show_state
    );
    
    parameter RECIVE    = 2'b00;
    parameter SEND      = 2'b01;
    parameter WAIT      = 2'b10;
    
    reg [31:0] Buffer [0:3];
    reg [3:0] Buffer_Counter;
    
    reg [13:0] Store_ID;
    
    reg [1:0] current_state, next_state;
    
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            current_state <= RECIVE;
		end else begin
            current_state <= next_state;
		end   
    end
    
    always @(*) begin
        next_state = current_state;   
        case(current_state) 
            RECIVE: begin
                if(s_axis_tvalid == 1'b0) begin
                    next_state = RECIVE;
                end 
                else if(s_axis_tlast == 1'b1 || Buffer_Counter == 4'b0011) begin
                    next_state = SEND;
                end
                
            end
            SEND: begin
                next_state = WAIT;
            end
            WAIT: begin
                if(m_header_data_end == 1'b1) begin
                    next_state = RECIVE;
                end  
            end
        endcase 
//        show_state = current_state;
    end 
    
    always @(posedge clk, negedge rst) begin
        if(!rst) begin 
            s_axis_tready <= 1'b1; 
            m_header_data_start <= 1'b0; 
            Buffer_Counter <= 4'b0;  
            m_packet_rs <= 2'b0;    
        end
        else begin 
            case(next_state) 
                RECIVE: begin
                    m_packet_rs <= 2'b0;
                    s_axis_tready <= 1'b1; 
                    if(s_axis_tvalid && s_axis_tready) begin
                           Buffer[Buffer_Counter] <= s_axis_tdata;
                           Buffer_Counter <= Buffer_Counter + 1'b1;
                    end 
                    if(m_header_data_end == 1'b1) begin
                        m_packet_id <= Store_ID;
                        m_packet_rs <= {1'b1, m_header_data_response};
                    end 
                end
                SEND: begin
                    s_axis_tready <= 1'b0; 
                    m_header_data_start <= 1'b1;
                    Buffer_Counter <= 4'b0;
                    m_header_data_src_ip <= Buffer [0] [31:0];
                    m_header_data_dst_ip <= Buffer [1] [31:0];
                    m_header_data_dst_port <= Buffer [2] [15:0]; 
                    m_header_data_src_port <= Buffer [2] [31:16];
                    m_header_data_protocol <=  s_axis_tdata [7:0];
                    Store_ID <= s_axis_tdata[21:8];
                end
                WAIT: begin
                    m_header_data_start <= 1'b0;
                end
            endcase
        end
    end 
    
endmodule