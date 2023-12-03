`timescale 1ns / 1ps

// N-Bit DFF (Default to 1-Bit)
module DFF #(parameter WIDTH = 1)(
    input wire clk, rst,
    input wire en,
    input wire [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
    );
    
    always @ ( posedge(clk) or posedge(rst) )
        if ( rst ) begin
            data_out <= 0;
        end else if ( clk ) begin
            if ( en ) begin
                data_out <= data_in;
            end 
        end
endmodule