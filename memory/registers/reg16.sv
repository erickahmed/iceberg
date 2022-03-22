import bit_reg::*;

package reg16 (
    input [15:0]in;
    input load;
    input clk;
    output [15:0]out;
    output [15:0]out_compl
);

    bit_reg bitreg0 (in[0], load, clk, out[0], out_compl[0]);
    bit_reg bitreg1 (in[1], load, clk, out[1], out_compl[1]);
    bit_reg bitreg2 (in[2], load, clk, out[2], out_compl[2]);
    bit_reg bitreg3 (in[3], load, clk, out[3], out_compl[3]);
    bit_reg bitreg4 (in[4], load, clk, out[4], out_compl[4]);
    bit_reg bitreg5 (in[5], load, clk, out[5], out_compl[5]);
    bit_reg bitreg6 (in[6], load, clk, out[6], out_compl[6]);
    bit_reg bitreg7 (in[7], load, clk, out[7], out_compl[7]);
    bit_reg bitreg8 (in[8], load, clk, out[8], out_compl[8]);
    bit_reg bitreg9 (in[9], load, clk, out[9], out_compl[9]);
    bit_reg bitreg10 (in[10], load, clk, out[10], out_compl[10]);
    bit_reg bitreg11 (in[11], load, clk, out[11], out_compl[11]);
    bit_reg bitreg12 (in[12], load, clk, out[12], out_compl[12]);
    bit_reg bitreg13 (in[13], load, clk, out[13], out_compl[13]);
    bit_reg bitreg14 (in[14], load, clk, out[14], out_compl[14]);
    bit_reg bitreg15 (in[15], load, clk, out[15], out_compl[15]);

endpackage