'include "mux.v"
'include "or4way.v"

module mux4way(out, i0, i1, i2, i3, sel0, sel1);
    input i0, i1, i2, i3;
    input [3:0]sel;
    output [3:0]out;
    wire tmp0, tmp1, tmp2, tmp3;

    wire [3:0] [1:0] sel0 = sel;
    wire [0:3] [1:0] sel1 = sel;

    not(notSel0, sel0);
    not(notSel1, sel1);

    and(tmp0, i0, notSel0);
    and(tmp1, i1, sel0);
    and(tmp2, i2, notSel1);
    and(tmp3, i3, sel1);

    or4way(out, tmp0, tmp1, tmp2, tmp3);

endmodule