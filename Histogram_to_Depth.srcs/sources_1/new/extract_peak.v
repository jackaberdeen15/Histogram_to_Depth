`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 13:22:01
// Design Name: 
// Module Name: extract_peak
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
module extract_peak #(parameter bin_width=16, count_width=24, histogram_width=16*bin_width, range_width=4, peak_bin_width=5)(
    input wire [histogram_width-1:0] histogram, //input histogram to get photon count
    input wire [range_width-1:0] peak_index, //bin with the highest value
    input wire clk, //clock
    output wire [count_width-1:0] peak_photon_count, //total photon count for the peak
    output wire [2*range_width-1:0] peak_range, //the bin rnage the peak is contained within
    output wire [peak_bin_width*bin_width-1:0] peak_histogram
    );
    
    reg [range_width-1:0] tl,tr;
    reg [range_width-1:0] peak_width;
    reg [count_width-1:0] temp_photon_count;
    reg [bin_width-1:0] depth_cm;
    reg [peak_bin_width*bin_width-1:0] temp_histogram;
    
    always @(posedge clk) begin
        if(peak_index>=4'd14) tr=4'd15; //truncate max bin to 16
        else tr=peak_index+4'd2;
        
        if(peak_index<2) tl=4'd0;
        else tl=peak_index-4'd2;
        
        peak_width=tr-tl+1;      
        
        case(peak_width)
            4'd3: begin
                temp_photon_count=histogram[tl*bin_width +:bin_width]+histogram[(tl+1)*bin_width +:bin_width]+histogram[(tl+2)*bin_width +:bin_width];
                temp_histogram[3*bin_width-1:0]=histogram[tl*bin_width +: 3*bin_width];
                end
            4'd4: begin
                temp_photon_count=histogram[tl*bin_width +:bin_width]+histogram[(tl+1)*bin_width +:bin_width]+histogram[(tl+2)*bin_width +:bin_width]+histogram[(tl+3)*bin_width +:bin_width];
                temp_histogram[4*bin_width-1:0]=histogram[tl*bin_width +:4*bin_width];
                end
            4'd5: begin 
                temp_photon_count=histogram[tl*bin_width +:bin_width]+histogram[(tl+1)*bin_width +:bin_width]+histogram[(tl+2)*bin_width +:bin_width]+histogram[(tl+3)*bin_width +:bin_width]+histogram[(tr)*bin_width +:bin_width];
                temp_histogram[5*bin_width-1:0]=histogram[tl*bin_width +:5*bin_width];
                end
            default: begin
                temp_photon_count=24'd16777215;
                temp_histogram=80'hFFFFFFFFFFFFFFFFFFFF;
                end
        endcase
        
    end
    
    //assign d
    assign peak_histogram=temp_histogram;
    assign peak_photon_count=temp_photon_count;
    assign peak_range={tl,tr};
endmodule
