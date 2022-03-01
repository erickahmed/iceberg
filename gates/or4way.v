module or4way(out, i0, i1, i2, i3);
    input i0, i1, i2, i3;
    output [3:0]out;
    wire tmp01, tmp23,;

    or(tmp01, i0, i1);
    or(tmp23, i2, i3);
    or(out, tmp01, tmp23);

endmodule