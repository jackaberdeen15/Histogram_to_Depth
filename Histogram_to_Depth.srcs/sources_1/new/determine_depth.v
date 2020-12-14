`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:26:53
// Design Name: 
// Module Name: determine_depth
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
module determine_depth #(parameter bin_size=16, count_width=24, histogram_width=5*bin_size, float_width=32, index_width=4)(
    input wire [histogram_width-1:0] histogram_bins, //[15:0] refers to min bin and [79:64] would be max depending on peak width
    input wire [2*index_width-1:0] bin_index,
    input wire clk,
    output wire [float_width-1:0] depth_bin //bit 31 is always zero, [30:23] is exponent, [22:0] is fraction
    );
    reg [count_width-1:0] depth_bin_numerator, depth_bin_denominator;
    wire [count_width-1:0] depth_bin_numerator_wire, depth_bin_denominator_wire;
    reg [2:0] peak_width;
    wire [47:0] divider_output;
    reg [float_width-1:0] divider_output_buffer;
    wire output_valid;
    wire tvalid=1'd1;
    
    
    
    initial begin
        divider_output_buffer=0;
    end
    
    always @(posedge clk) begin
        peak_width<=bin_index[3:0]-bin_index[7:4]+1;
        
        case(peak_width)
            3'd3: begin
                depth_bin_numerator<=histogram_bins[15:0]*(bin_index[7:4]+1)+histogram_bins[31:16]*(bin_index[7:4]+2)+histogram_bins[47:32]*(bin_index[7:4]+3);
                depth_bin_denominator<=histogram_bins[15:0]+histogram_bins[31:16]+histogram_bins[47:32];
                end
            3'd4: begin
                depth_bin_numerator<=histogram_bins[15:0]*(bin_index[7:4]+1)+histogram_bins[31:16]*(bin_index[7:4]+2)+histogram_bins[47:32]*(bin_index[7:4]+3)+histogram_bins[63:48]*(bin_index[7:4]+4);
                depth_bin_denominator<=histogram_bins[15:0]+histogram_bins[31:16]+histogram_bins[47:32]+histogram_bins[63:48];
                end
            3'd5: begin 
                depth_bin_numerator<=histogram_bins[15:0]*(bin_index[7:4]+1)+histogram_bins[31:16]*(bin_index[7:4]+2)+histogram_bins[47:32]*(bin_index[7:4]+3)+histogram_bins[63:48]*(bin_index[7:4]+4)+histogram_bins[79:64]*(bin_index[7:4]+5);
                depth_bin_denominator<=histogram_bins[15:0]+histogram_bins[31:16]+histogram_bins[47:32]+histogram_bins[63:48]+histogram_bins[79:64];
                end
            default: begin
                depth_bin_numerator<=16'd30000;
                depth_bin_denominator<=16'd15000;
                end
        endcase
    end
    
    assign depth_bin_numerator_wire=depth_bin_numerator;
    assign depth_bin_denominator_wire=depth_bin_denominator;
    
     
    div_gen_0 divide (
      .aclk(clk),   // input wire aclk
      .s_axis_divisor_tready(denominator_tready),    // output wire s_axis_divisor_tready
      .s_axis_divisor_tvalid(tvalid),    // input wire s_axis_divisor_tvalid
      .s_axis_divisor_tdata(depth_bin_denominator_wire),      // input wire [23 : 0] s_axis_divisor_tdata
      .s_axis_dividend_tready(numerator_tready),  // output wire s_axis_dividend_tready
      .s_axis_dividend_tvalid(tvalid),  // input wire s_axis_dividend_tvalid
      .s_axis_dividend_tdata(depth_bin_numerator_wire),    // input wire [23 : 0] s_axis_dividend_tdata
      .m_axis_dout_tvalid(output_valid),          // output wire m_axis_dout_tvalid
      .m_axis_dout_tdata(divider_output)            // output wire [47 : 0] m_axis_dout_tdata
    );
    
    always @(posedge clk) begin
        
        if(output_valid)
            divider_output_buffer=divider_output[31:0];//bit 31 is always zero, [30:23] is exponent, [22:0] is fraction
    end        
    
    assign depth_bin=divider_output_buffer;
    
endmodule
