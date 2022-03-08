'include "gates/nand16.v"

module nand3way16(y16, a16, b16, c16);
    input [15:0]a16;
    input [15:0]b16;
    input [15:0]c16;
    output [15:0]y16;

    wire tmp0[15:0], tmp1[15:0]

    nand16(tmp0, a16, b16);
    nand16(tmp1, tmp0, tmp0);
    nand16(y16, tmp1, c16);

endmodule