`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:29:24
// Design Name: 
// Module Name: swap_peaks
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


module swap_peaks #(parameter bin_width=16, count_width=24, histogram_width=5*bin_width, range_width=4)(
        input wire clk, 
        input wire [count_width-1:0] first_peak_photon_count,
        input wire [count_width-1:0] second_peak_photon_count,
        input wire [histogram_width-1:0] first_peak_histogram,
        input wire [histogram_width-1:0] second_peak_histogram,
        input wire [2*range_width-1:0] first_peak_range,
        input wire [2*range_width-1:0] second_peak_range,
        output wire [histogram_width-1:0] largest_peak_histogram,
        output wire [histogram_width-1:0] smallest_peak_histogram,
        output wire [2*range_width-1:0] largest_peak_range,
        output wire [2*range_width-1:0] smallest_peak_range
    );
    
    reg [2*range_width-1:0] large_peak_buffer, small_peak_buffer;
    reg [histogram_width-1:0] large_peak_histogram_buffer,small_peak_histogram_buffer;
    
    always @(posedge clk) begin
        if(second_peak_photon_count>first_peak_photon_count) begin
            large_peak_buffer<=second_peak_range;
            small_peak_buffer<=first_peak_range;
            large_peak_histogram_buffer<=second_peak_histogram;
            small_peak_histogram_buffer<=first_peak_histogram;
        end
        else begin
            large_peak_buffer<=first_peak_range;
            small_peak_buffer<=second_peak_range;
            large_peak_histogram_buffer<=first_peak_histogram;
            small_peak_histogram_buffer<=second_peak_histogram;
        end        
    end
    
    assign largest_peak_range=large_peak_buffer;
    assign smallest_peak_range=small_peak_buffer;
    assign largest_peak_histogram=large_peak_histogram_buffer;
    assign smallest_peak_histogram=small_peak_histogram_buffer;
    
endmodule
