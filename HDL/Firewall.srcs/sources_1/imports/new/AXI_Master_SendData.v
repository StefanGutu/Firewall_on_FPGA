`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2026 08:57:20 PM
// Design Name: 
// Module Name: AXI_Master_SendData
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


module AXI_Master_SendData(
    input clk,
    input rst,
    input [13:0]        s_packet_id,
    input [1:0]         s_packet_rs,
    
    output reg [31:0]   m_axis_tdata,
    output reg          m_axis_tvalid,
    input               m_axis_tready,
    output reg          m_axis_tlast
    );
    
    
    
    
    always @(posedge clk, negedge rst) begin
        if(!rst) begin
            m_axis_tvalid <= 1'b0;
        end
        else begin
            if(!m_axis_tvalid || m_axis_tready) begin
                if(s_packet_rs != 2'b00) begin
                    m_axis_tvalid <= 1'b1;
                    m_axis_tlast <= 1'b1;
                end 
                else begin
                    m_axis_tvalid <= 1'b0;
                    m_axis_tlast <= 1'b0;
                end
            end
        end
    end 
    
    always @(posedge clk, negedge rst) begin
        if(!rst) begin
            m_axis_tdata <= 32'b0; 
        end
        else begin
            if(!m_axis_tvalid || m_axis_tready) begin
                if(s_packet_rs != 2'b00) begin
                    m_axis_tdata <= {16'b0, s_packet_id, s_packet_rs};  
                end 
            end
        end
    end 
    
    
endmodule
