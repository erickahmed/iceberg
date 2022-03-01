include "mux.v";
include "or4way.v";

module mux4way(out, i0, i1, i2, i3, sel0, sel1);
    input i0, i1, i2, i3;
    input [2:0]sel;
    output [3:0]out;
    wire tmp0, tmp1, tmp2, tmp3;

    not(notSel, sel);

    and(tmp0, i0, notSel);
    and(tmp1, i1, sel);
    and(tmp2, i2, notSel);
    and(tmp3, i3, sel);

    or4way(out, tmp0, tmp1, tmp2, tmp3);

endmodule