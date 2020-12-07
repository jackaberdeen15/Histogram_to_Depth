`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 12:32:45
// Design Name: 
// Module Name: Histogram_to_Depth
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


module Histogram_to_Depth(
    input [255:0] histogram,
    input clk,
    input reset,
    output [23:0] first_peak_photon_count,
    output [23:0] second_peak_photon_count,
    output [31:0] depth,/*
    output [79:0] test_first_peak_histogram,
    output [79:0] test_second_peak_histogram,
    output [7:0] first_peak_range,
    output [7:0] second_peak_range,
    output [7:0] out_large_peak_range,
    output [7:0] out_small_peak_range,*/
    output NaN_1_flag,
    output NaN_2_flag
    );
    
    wire [3:0] first_peak_index,second_peak_index;
    wire [15:0] median,overflow;
    wire [255:0] sub_ambient_histogram, sub_fp_histogram;
    wire [79:0] first_peak_histogram,second_peak_histogram, large_peak_histogram,small_peak_histogram;
    wire [7:0] first_peak_range_buffer, second_peak_range_buffer;
    wire [7:0] large_peak_range, small_peak_range;
    wire [23:0] first_peak_photon_count_buffer, second_peak_photon_count_buffer;
    wire NaN_fpeak_flag, NaN_speak_flag; 
    
    
    //find the ambient photon count
    median ambient_calc(
        histogram,
        clk,
        median
    );
    
    //subtract ambient photon count from histogram
    subtract_median subtract_median(
        histogram,
        median,
        clk,
        sub_ambient_histogram
    );
    
    //find largest valued bin for first peak
    full_compare first_peak(
        sub_ambient_histogram,
        median,
        clk,
        first_peak_index,
        NaN_fpeak_flag
    );
    
    //extract first peak range and total photon count
    extract_peak peak_extract_1(
        sub_ambient_histogram,
        first_peak_index,clk,
        first_peak_photon_count_buffer,
        first_peak_range_buffer,
        first_peak_histogram
    );
    
    //remove first peak from the histogram to find second peak
    remove_first_peak first_peak_removal(
        sub_ambient_histogram,
        first_peak_range_buffer,
        clk,
        sub_fp_histogram
    );
    
    //find largest bin for the 2nd peak
    full_compare second_peak(
        sub_fp_histogram, 
        median,
        clk,
        second_peak_index,
        NaN_speak_flag
    );
    
    //extract second peak range and total photon count
    extract_peak peak_extract_2(
        sub_fp_histogram,
        second_peak_index,
        clk,
        second_peak_photon_count_buffer,
        second_peak_range_buffer,
        second_peak_histogram
    );
    
    //determine which peak is largest by photon count
    swap_peaks peak_swap(
        clk,
        first_peak_photon_count_buffer,
        second_peak_photon_count_buffer,
        first_peak_histogram,
        second_peak_histogram,
        first_peak_range_buffer,
        second_peak_range_buffer,
        large_peak_histogram,
        small_peak_histogram,
        large_peak_range,
        small_peak_range
    );
    
     
    //determine the dpeth of the first peak
    determine_depth det_fp_depth(
        large_peak_histogram,
        large_peak_range,
        clk,
        depth
    );
    
    
    /*assign first_peak_range=first_peak_range_buffer;
    assign second_peak_range=second_peak_range_buffer;
    
    assign test_first_peak_histogram=first_peak_histogram;
    assign test_second_peak_histogram=second_peak_histogram;
    
    assign out_large_peak_range=large_peak_range;
    assign out_small_peak_range=small_peak_range;*/
    
    assign first_peak_photon_count=first_peak_photon_count_buffer;
    assign second_peak_photon_count=second_peak_photon_count_buffer;
    
    assign NaN_1_flag=NaN_fpeak_flag;
    assign NaN_2_flag=NaN_speak_flag;
    
    
endmodule






