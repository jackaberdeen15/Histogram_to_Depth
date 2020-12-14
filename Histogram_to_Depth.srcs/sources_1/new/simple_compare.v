`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:21:05
// Design Name: 
// Module Name: simple_compare
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
module simple_compare #(parameter bin_size=16, index_width=4)(
    input wire [bin_size-1:0] bin1_value, 
    input wire [index_width-1:0] bin1_index,
    input wire [bin_size-1:0] bin2_value,
    input wire [index_width-1:0] bin2_index,
    //input wire clk, //clock
    output wire [bin_size-1:0] max_bin_value,
    output wire [index_width-1:0] max_bin_index
    );
    
    /*reg [bin_size-1:0] max_value_buffer;
    reg [index_width-1:0] max_index_buffer;
    
    always @(*) begin
        if(bin1_value>bin2_value) begin
            max_value_buffer=bin1_value;
            max_index_buffer=bin1_index;
        end
        else begin
            max_value_buffer=bin2_value;
            max_index_buffer=bin2_index;
        end
    end
    
    assign max_bin_value=max_value_buffer;
    assign max_bin_index=max_index_buffer;*/
    
    assign max_bin_value=(bin1_value>bin2_value)?bin1_value:bin2_value;
    assign max_bin_index=(bin1_value>bin2_value)?bin1_index:bin2_index;
            
endmodule