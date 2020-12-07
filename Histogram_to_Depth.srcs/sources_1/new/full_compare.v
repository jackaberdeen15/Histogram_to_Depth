`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:20:16
// Design Name: 
// Module Name: full_compare
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
//gets peak bin location
module full_compare #(parameter bin_width=16, bin_num=16, histogram_width=bin_num*bin_width, index_width=4)(
    input wire [histogram_width-1:0] histogram, //16 uint_16 bin values
    input wire [bin_width-1:0] median, 
    input wire clk, //clock
    output wire [index_width-1:0] max_bin_index, //index of which bin has the max value
    output wire NaN_flag
    );
    
    wire [bin_width-1:0] winner_bins_values_1[bin_num/2-1:0];
    wire [index_width-1:0] winner_bins_indexs_1[bin_num/2-1:0];
    wire tvalid;
    wire output_valid;
    wire [bin_width-1:0] square_root;
    reg [9:0] square_root_buffer;
    
    reg [bin_width-1:0] photon_count_buffer;
    wire [bin_width-1:0] photon_count;
    reg [index_width-1:0] bin_buffer;
    wire [index_width-1:0] bin;
    reg NaN;
    
    genvar i;
    generate
        for(i=0; i<bin_num;i=i+2) begin : gen_compare_1
        
        simple_compare c1(
                        histogram[i*bin_width +:bin_width],
                        i[index_width-1:0],
                        histogram[(i+1)*bin_width +:bin_width],
                        i[index_width-1:0]+4'd1,
                        winner_bins_values_1[i/2],
                        winner_bins_indexs_1[i/2]
                        );
        end 
    endgenerate
    
    wire [bin_width-1:0] winner_bins_values_2[bin_num/4-1:0];
    wire [index_width-1:0] winner_bins_indexs_2[bin_num/4-1:0];
    
    generate
        for(i=0; i<bin_num/2;i=i+2) begin : gen_compare_2
        simple_compare c2(
                        winner_bins_values_1[i],
                        winner_bins_indexs_1[i],
                        winner_bins_values_1[i+1],
                        winner_bins_indexs_1[i+1],
                        winner_bins_values_2[i/2],
                        winner_bins_indexs_2[i/2]
                        );
        end 
    endgenerate
    
    wire [bin_width-1:0] winner_bins_values_3[bin_num/8-1:0];
    wire [index_width-1:0] winner_bins_indexs_3[bin_num/8-1:0];
    
    generate
        for(i=0; i<bin_num/4;i=i+2) begin : gen_compare_3
        simple_compare c3( 
                        winner_bins_values_2[i],
                        winner_bins_indexs_2[i],
                        winner_bins_values_2[i+1],
                        winner_bins_indexs_2[i+1],
                        winner_bins_values_3[i/2],
                        winner_bins_indexs_3[i/2]
                        );
        end 
    endgenerate
    
    
    
    simple_compare c4( winner_bins_values_3[0],
                        winner_bins_indexs_3[0],
                        winner_bins_values_3[1],
                        winner_bins_indexs_3[1],
                        photon_count,
                        bin
                        );
    
    assign tvalid=(photon_count>0)? 1:0;
    
    cordic_0 square_root_photon_count (
      .aclk(clk),                                        // input wire aclk
      .s_axis_cartesian_tvalid(tvalid),  // input wire s_axis_cartesian_tvalid
      .s_axis_cartesian_tdata(photon_count),    // input wire [15 : 0] s_axis_cartesian_tdata
      .m_axis_dout_tvalid(output_valid),            // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata(square_root)              // output wire [15 : 0] m_axis_dout_tdata
    );
    
    always @(posedge clk) begin
             
        if(output_valid) begin
            square_root_buffer=square_root[9:0];
            photon_count_buffer=photon_count;
            bin_buffer=bin;
            NaN=(photon_count_buffer>4*(square_root_buffer))?0:1;   
        end
    end
    
    assign NaN_flag=NaN;
    assign max_bin_index=bin_buffer;

endmodule
