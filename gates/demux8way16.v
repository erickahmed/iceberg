'include "demux4way16.v"

module demux8way(out0, out1, out3, out4, out5, out6, out7, i0, i1, i2, i3, sel);
    input [15:0]i0;
    input [15:0]i1;
    input [15:0]i2;
    input [15:0]i3;
    input [7:0]sel;
    output [15:0]out0;
    output [15:0]out1;
    output [15:0]out2;
    output [15:0]out3;
    output [15:0]out4;
    output [15:0]out5;
    output [15:0]out6;
    output [15:0]out7;

    wire [7:0] [3:0] sel0 = sel;
    wire [0:7] [3:0] sel1 = sel;

    demux4way16(out0 ,out1, out2, out3, i0, i1, sel0);
    demux4way16(out4, out5, out6, out7, i2, i3, sel1);
endmodule