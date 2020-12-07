`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:18:19
// Design Name: 
// Module Name: median
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

module median #(parameter bin_width=16, bin_num=16, histogram_width=bin_num*bin_width, count_width=24)(
    input wire [histogram_width-1:0] histogram,
    input wire clk, //clock
    output wire [bin_width-1:0] median  
    );
    
    reg [count_width-1:0] hist_value;
    
    /*genvar i;
    generate
        for(i=0; i<bin_num;i=i+1) begin : gen_combine_val
            hist_value[count_width:0]=hist_value+histogram[i*bin_width +:bin_width];
        end 
    endgenerate*/
    
    always @(posedge clk) begin
    
        hist_value[23:0] = histogram[15:0]+histogram[31:16]+histogram[47:32]+histogram[63:48]+histogram[79:64]+histogram[95:80]+histogram[111:96]
        +histogram[127:112]+histogram[143:128]+histogram[159:144]+histogram[175:160]+histogram[191:176]+histogram[207:192]+histogram[223:208]
        +histogram[239:224]+histogram[255:240];
        
        hist_value=hist_value[23:0]/23'd16;
    end 
    
    assign median=hist_value[bin_width-1:0]; 
      
endmodule