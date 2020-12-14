`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:19:23
// Design Name: 
// Module Name: subtract_median
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


module subtract_median #(parameter bin_width=16, bin_num=16, histogram_width=bin_num*bin_width, range_width=4)(
    input wire [histogram_width-1:0] in_hist,
    input wire [bin_width-1:0] median,
    input wire clk,
    output wire [histogram_width-1:0] out_hist
    );
    
    reg [histogram_width-1:0] in_hist_temp, out_hist_temp;
    wire [bin_width-1:0] overflow;
    wire [histogram_width-1:0] hist_buffer;
    
    //initial overflow=16'd0;
    
    //always @(posedge clk)
        //in_hist_temp=in_hist;
    
    genvar i;
    //genvar overflow;
    generate
        for(i=0;i<bin_width;i=i+1) begin: gen_sub_med
            c_addsub_0  hist_sub_ambient(
              .A(in_hist[i*bin_width +:bin_width]),          // input wire [15 : 0] A
              .B(median[bin_width-1:0]),          // input wire [15 : 0] B
              .CLK(clk),      // input wire CLK
              .C_OUT(overflow[i]),  // output wire C_OUT
              .S(hist_buffer[i*bin_width +:bin_width])          // output wire [15 : 0] S
            );
            //always @(hist_buffer[i*bin_width +:bin_width]) begin
            always @(posedge clk) begin
                if(in_hist[i*bin_width +:bin_width]<median[bin_width-1:0]) out_hist_temp[i*bin_width +:bin_width]=0;
                else out_hist_temp[i*bin_width +:bin_width]=hist_buffer[i*bin_width +:bin_width];
        
            end
        end  
    endgenerate  
    
    
    assign out_hist=out_hist_temp;
    
    
endmodule
