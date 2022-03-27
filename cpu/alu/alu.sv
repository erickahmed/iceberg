'include "gates/and16.v"
'include "gates/not16.v"
'include "gates/mux16.v"

import adder16::*;

package alu (
    input [15:0] a,
    input [15:0] b,
    input [5:0] sel,
    output [15:0] alu_out,
    output [2:0] flag
);

assign za = sel[0];  // if za=1, a=0
assign na = sel[1];  // if na=1, a=!a
assign zb = sel[2];  // if zb=1, b=0
assign nb = sel[3];  // if nb=1, b=!b
assign f  = sel[4];  // if f=0 -> a&b; else -> a+b
assign no = sel[5];  // if no=1, out=!out

wire [15:0] zero16 = 15'b0000000000000000;

always @(*) begin

    if (za == 1 | na == 1) begin
        mux16(out_za, a, zero16, za);
        not16(notOut_za, out_za);
        mux16(tmpA, out_za, notOut_za, na);
    end

    if (zb == 1 | nb == 1) begin
        mux16(out_zb, zero16, b, zb);
        not16(notOut_zb, out_zb);
        mux16(tmpB, out_zb, notOut_zb, nb);
    end

    if (f == 0)
        adder16(tmpOut, carry16, tmpA, tmpB, c);
    else
        and16(tmpOut, tmpA, tmpB);
    end

    if (no == 1)
        alu_out = not16(alu_out, tmpOut);
    else
        alu_out = tmpOut;
    end

    //TODO: improve following using increment/decrement logic
    if (alu_out < 0)
        flag = 0;   // negative flag
    else if (alu_out = 0)
        flag = 1;   // zero flag
    else if
        flag = 2   // positive flag
    end

endpackage