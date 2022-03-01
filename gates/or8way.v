include "or4way.v";

module or8way(out4, i0, i1, i2, i3, i4, i5, i6, i7);
    input i0, i1, i2, i3, i4, i5, i6, i7;
    output out;
    wire tmp0, tmp1;

    or4way(tmp0, i0, i1, i2, i3);
    or4way(tmp1, i4, i5, i6, i7);
    or(out, tmp0, tmp1);
endmodule