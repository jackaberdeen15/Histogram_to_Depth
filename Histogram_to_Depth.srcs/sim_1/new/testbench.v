`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 15:22:46
// Design Name: 
// Module Name: testbench
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


module testbench();
    
    //inputs
    reg [255:0] histogram =0;
    reg clk;
    reg reset;
    parameter CLOCK_PERIOD = 10;
    
    //outputs
    wire [23:0] first_peak_photon_count;
    wire [23:0] second_peak_photon_count;
    wire [31:0] depth;/*
    wire [7:0] first_peak_range;
    wire [7:0] second_peak_range;
    wire [79:0] test_first_peak_histogram;
    wire [79:0] test_second_peak_histogram;
    wire [7:0] large_peak_range;
    wire [7:0] small_peak_range;*/
    wire NaN_1_flag;
    wire NaN_2_flag;
    
    
    //unit under test (UUT)      
    Histogram_to_Depth uut(
        .histogram(histogram),
        .clk(clk),
        .reset(reset),
        .first_peak_photon_count(first_peak_photon_count),
        .second_peak_photon_count(second_peak_photon_count),
        .depth(depth),/*
        .test_first_peak_histogram(test_first_peak_histogram),
        .test_second_peak_histogram(test_second_peak_histogram),
        .first_peak_range(first_peak_range),
        .second_peak_range(second_peak_range),
        .out_large_peak_range(large_peak_range),
        .out_small_peak_range(small_peak_range),*/
        .NaN_1_flag(NaN_1_flag),
        .NaN_2_flag(NaN_2_flag)
    );
    
    initial begin
        clk=0;
        forever #(CLOCK_PERIOD/2) clk=~clk;
    end
    
    initial begin
        histogram=0;
        reset=0;
        
        #2000 histogram = {16'd15, 16'd10, 16'd23, 16'd190, 16'd56, 16'd2000, 16'd700, 16'd900, 16'd56, 16'd789, 16'd9900, 16'd16, 16'd415, 16'd158, 16'd165, 16'd175};
        //median = d973 or h3CD
        //depth bin = 6 or h03000000
        //first peak photon count = d8927 or h22df
        //second peak photon count = d1027 or h0403
        #2000 histogram = {16'd60, 16'd110, 16'd30, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd54, 16'd82, 16'd102, 16'd63, 16'd27, 16'd0, 16'd0};
        //median = d33 or h21
        //depth bin = 5.22 or h02ae3380
        //first peak photon count = d104 or h0068
        //second peak photon count = d169 or h00a9
        #2000 histogram = {16'd28, 16'd126, 16'd300, 16'd89, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd30, 16'd400, 16'd134, 16'd45, 16'd500};
        //median = d103 or h67
        //depth bin = 1 or h00928ac4
        //first peak photon count = d428 or h01ac
        //second peak photon count = d297 or h0129
        #2000 histogram = {16'd0, 16'd0, 16'd0, 16'd0, 16'd1700, 16'd1500, 16'd3600, 16'd2750, 16'd3240, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0, 16'd0};
        //median = 799 or h31F
        //depth bin = 9.66 or h04c0fb7d
        //first peak photon count = d8795 or h225b
        //second peak photon count = d0 or h0000
        #2000 $finish;
    
    end
    
       
    
endmodule

