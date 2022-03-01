include "demux.v";

module demux4way(out0, out1, out2, out3, i0, i1, sel);
    input [15:0]i0;
    input [15:0]i1;
    input [3:0]sel;
    output [15:0]out0;
    output [15:0]out1;
    output [15:0]out2;
    output [15:0]out3;

    wire [3:0] [1:0] sel0 = sel;
    wire [0:3] [1:0] sel1 = sel;

    not(notSel0, sel0);
    not(notSel1, sel1);

    and(out1, i0, sel0);
    and(out0, i0, notSel0);
    and(out2, i1, sel1);
    and(out3, i1, notSel1);
endmodule