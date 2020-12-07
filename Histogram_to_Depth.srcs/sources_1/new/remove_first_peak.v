`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:22:47
// Design Name: 
// Module Name: remove_first_peak
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
module remove_first_peak #(parameter bin_width=16, bin_num=16, histogram_width=bin_num*bin_width, range_width=4)(
        input wire [histogram_width-1:0] input_histogram,
        input wire [2*range_width-1:0] first_peak_range,
        input wire clk,
        output wire [histogram_width-1:0] output_histogram //histogram with first peak removed
    );
    
    reg [histogram_width-1:0] histogram_buffer;
    reg [range_width-1:0] tl,tr;
    reg [range_width-1:0] width;
    
    always @(posedge clk) begin
        tl=first_peak_range[range_width +:range_width];
        tr=first_peak_range[0 +:range_width];
        width=tr-tl+1;
        
        histogram_buffer=input_histogram;
        
        case(width)
            4'd3: histogram_buffer[tl*bin_width +:48]=0;
            4'd4: histogram_buffer[tl*bin_width +:64]=0;
            4'd5: histogram_buffer[tl*bin_width +:80]=0;
        
        endcase
        
    end
    
    assign output_histogram=histogram_buffer;
    
endmodule
