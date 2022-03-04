'include "and16.v"
'include "not16.v"
'include "or4way.v"

module mux4way16(out, i0, i1, i2, i3, sel);
    input [15:0]i0;
    input [15:0]i1;
    input [15:0]i2;
    input [15:0]i3;
    input [1:0]sel;
    output [15:0]out;
    wire [15:0]tmp0;
    wire [15:0]tmp1;
    wire [15:0]tmp2;
    wire [15:0]tmp3;

    wire [2:0] [15:0] sel16 = sel;

    not16(notSel16, sel16);

    and16(tmp0, i0, notSel16);
    and16(tmp1, i1, sel16);
    and16(tmp2, i2, notSel16);
    and16(tmp3, i3, sel16);

    or4way16(out, tmp0, tmp1, tmp2, tmp3);
endmodule