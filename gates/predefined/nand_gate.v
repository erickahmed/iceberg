module nand_gate(y, a, b);
    input a, b;
    output y;
    wire tmpAnd;

    and(tmpAnd, a, b);
    not(y, tmpAnd);
endmodule