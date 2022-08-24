'include "demux4way.v"

module demux8way(out0, out1, out3, out4, out5, out6, out7, i0, i1, i2, i3, sel);
    input i0, i1, i2, i3;
    input [7:0]sel;
    output out0, out1, out2, out3, out4, out5, out6, out7;

    wire [7:0] [3:0] sel0 = sel;
    wire [0:7] [3:0] sel1 = sel;

    demux4way (out0 ,out1, out2, out3, i0, i1, sel0);
    demux4way (out4, out5, out6, out7, i2, i3, sel1);
endmodule