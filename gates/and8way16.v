include "and16.v"

module and8way16(out, i0, i1, i2, i3, i4, i5, i6, i7);
    input [15:0]i0;
    input [15:0]i1;
    input [15:0]i2;
    input [15:0]i3;
    input [15:0]i4;
    input [15:0]i5;
    input [15:0]i6;
    input [15:0]i7;
    output [15:0] out;
    wire [15:0]tmp01;
    wire [15:0]tmp23;
    wire [15:0]tmp45;
    wire [15:0]tmp67;
    wire [15:0]tmp0123;
    wire [15:0]tmp4567;

    and16 and01(tmp01, i0, i1);
    and16 and23(tmp23, i2, i3);
    and16 and45(tmp45, i4, i5);
    and16 and67(tmp67, i6, i7);

    and16 and0123(tmp0123, tmp01, tmp23);
    and16 and4567(tmp4567, tmp45, tmp67);

    and16 final(out, tmp0123, tmp4567);
endmodule