module nand3way(y16, a16, b16, c16);
    input a16;
    input b16;
    input c16;
    output y16;

    wire tmp0, tmp1

    nand(tmp0, a16, b16);
    nand(tmp1, tmp0, tmp0);
    nand(y16, tmp1, c16);

endmodule