'include "demux.v"

module demux4way(out0, out1, out2, out3, i0, i1, sel);
    input i0, i1;
    input [1:0] sel;
    output out0, out1, out2, out3;

    wire [1:0] [1:0] sel0 = sel;
    wire [0:1] [1:0] sel1 = sel;

    demux(out0, out1, i0, sel0);
    demux(out2, out3, i1, sel1);
endmodule