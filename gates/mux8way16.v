'include "mux4way16.v"
'include "mux16.v"

module mux8way16(out, i0, i1, i2, i3, i4, i5, i6, i7, sel);
    input [15:0]i0;
    input [15:0]i1;
    input [15:0]i2;
    input [15:0]i3;
    input [15:0]i4;
    input [15:0]i5;
    input [15:0]i6;
    input [15:0]i7;
    input [7:0]sel;
    output [15:0]out;
    wire tmpMux1, tmpMux1;

    wire [7:0] [3:0] sel0 = sel;
    wire [0:7] [3:0] sel1 = sel;

    mux4way16(tmpMux0, i0, i1, i2, i3, sel0);
    mux4way16(tmpMux1, i4, i5, i6, i7, sel1);

    mux16(out, tmpMux0, tmpMux1, sel);
endmodule