import reg16::*;

`include "demux8way.v"
`include "mux8way16.v"

package ram8 (
    input [7:0]in;
    input [2:0]addr;
    input load;
    input clk
    output [7:0]outp;
);

wire [7:0]out_cmpl;
wire [7:0] [2:0] addr = lnaddr;

demux8way (load, load, load, load, lnaddr, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7]);
bit_reg (in[0], load, clk, out[0], out_cmpl[0]);
bit_reg (in[1], load, clk, out[1], out_cmpl[1]);
bit_reg (in[2], load, clk, out[2], out_cmpl[2]);
bit_reg (in[3], load, clk, out[3], out_cmpl[3]);
bit_reg (in[4], load, clk, out[4], out_cmpl[4]);
bit_reg (in[5], load, clk, out[5], out_cmpl[5]);
bit_reg (in[6], load, clk, out[6], out_cmpl[6]);
bit_reg (in[7], load, clk, out[7], out_cmpl[7]);
mux8way16 (out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], outp);

endpackage