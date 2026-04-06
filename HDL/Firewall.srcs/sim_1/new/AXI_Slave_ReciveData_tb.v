`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2026 03:48:21 PM
// Design Name: 
// Module Name: AXI_Slave_ReciveData_tb
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


module AXI_Slave_ReciveData_tb();
    reg clk,rst;
    reg [31:0]      s_axis_tdata;
    reg             s_axis_tvalid;
    reg             s_axis_tlast;
    wire            s_axis_tready;
    
    wire [31:0]     m_header_data_src_ip;
    wire [31:0]     m_header_data_dst_ip;
    wire [15:0]     m_header_data_dst_port;
    wire [7:0]      m_header_data_protocol;
    wire            m_header_data_start;
    reg             m_header_data_end;
    reg             m_header_data_response;
    
    AXI_Slave_ReciveData dut(   .clk(clk),.rst(rst),
                                .s_axis_tdata(s_axis_tdata),
                                .s_axis_tvalid(s_axis_tvalid),
                                .s_axis_tlast(s_axis_tlast),
                                .s_axis_tready(s_axis_tready),
                                .m_header_data_src_ip(m_header_data_src_ip),
                                .m_header_data_dst_ip(m_header_data_dst_ip),
                                .m_header_data_dst_port(m_header_data_dst_port),
                                .m_header_data_protocol(m_header_data_protocol),
                                .m_header_data_start(m_header_data_start),
                                .m_header_data_end(m_header_data_end),
                                .m_header_data_response(m_header_data_response));
    initial begin
        clk = 0;
    end   
                                
    always #5 clk = ~clk;    
    
    task send_new_data (input [31:0] data, input tlast);
        begin 
            s_axis_tdata  <= data;
            s_axis_tvalid <= 1;
            s_axis_tlast  <= tlast;        
            wait (s_axis_tready);
            #10;
        end
    endtask
                        
    initial begin
        s_axis_tvalid = 0;
        s_axis_tlast  = 0;
        s_axis_tdata  = 0;
        rst = 0;

        #20;
        rst = 1;

        send_word(32'hC0A80101, 0); // src ip
        send_word(32'hC0A80102, 0); // dst ip
        send_word(32'h1F900000, 0); // port
        send_word(32'h80000011, 1); // protocol + TLAST

        #20;
        
        m_header_data_end = 1;
        #10;
        m_header_data_end = 0;
    end
    
    
endmodule
