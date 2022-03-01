module or4way16(out, i0, i1, i2, i3);
    input [15:0]i0;
    input [15:0]i1;
    input [15:0]i2;
    input [15:0]i3;
    output [15:0]out;
    wire [15:0]tmp01;
    wire [15:0]tmp23,;

    or(tmp01, i0, i1);
    or(tmp23, i2, i3);
    or(out, tmp01, tmp23);

endmodule