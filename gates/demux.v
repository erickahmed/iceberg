module demux(y, z, a, sel);
    input a, sel;
    output y, z;
    wire notSel;

    not(notSel, sel);
    and(z, a, sel);
    and(y, a, notSel);
endmodule